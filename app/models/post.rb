class Post < ActiveRecord::Base
  validates_presence_of :body
  validates_presence_of :channel_id
  validates_presence_of :developer
  validates :title, presence: true, length: { maximum: 50 }
  validates :likes, numericality: { greater_than_or_equal_to: 0 }
  validate  :body_size, if: -> { body.present? }

  belongs_to :developer
  belongs_to :channel

  before_create :generate_slug
  after_update  :notify_slack_on_likes_threshold, if: -> { tens_of_likes? && likes_changed? }
  after_save    :notify_slack_on_publication, if: -> { published_at? && published_at_changed? }
  after_commit  :notify_twitter, unless: -> { draft? || tweeted }

  scope :published, -> { where('published_at is not null') }
  scope :drafts, -> { where('published_at is null') }
  scope :published_and_ordered, -> { published.order(published_at: :desc) }
  scope :published_and_untweeted, -> { published.where('tweeted is false') }

  MAX_BODY_WORDS  = 200
  MAX_TITLE_CHARS = 50

  def published?
    !!published_at?
  end

  def display_date
    published_at || created_at
  end

  def developer_username
    developer.username
  end

  def twitter_handle
    developer_twitter_handle || 'hashrocket'
  end

  def channel_name
    channel.name
  end

  def to_param
    slug + '-' + slugified_title
  end

  def increment_likes
    self.likes += 1
    save
  end

  def decrement_likes
    self.likes -= 1 if self.likes != 0
    save
  end

  def notify_slack_on_publication
    notify_slack('create')
  end

  def notify_twitter
    SocialMessaging::TwitterStatus.new(self).post_to_twitter
  end

  def notify_slack_on_likes_threshold
    notify_slack('likes_threshold')
  end

  def publish
    update(published_at: Time.now)
  end

  def publishable?
    !published? || !persisted?
  end

  def draft?
    !published?
  end

  private

  def tens_of_likes?
    !likes.zero? && likes % 10 == 0
  end

  def word_count
    body.split(' ').size
  end

  def words_remaining
    MAX_BODY_WORDS - word_count
  end

  def body_size
    if word_count > MAX_BODY_WORDS
      words_remaining_abs = words_remaining.abs
      errors.add :body, "of this post is too long. It is #{words_remaining_abs} #{'word'.pluralize(words_remaining_abs)} over the limit of 200 words"
    end
  end

  def generate_slug
    self.slug = SecureRandom.hex(5)
  end

  def slugified_title
    title.downcase.strip.gsub(/[^A-Za-z0-9\s]/, '').gsub(/(\s|-)+/, '-')
  end

  def notify_slack(event)
    SlackNotifier.new.async.perform(self, event)
  end

  def developer_twitter_handle
    developer.twitter_handle
  end

  def self.search(query)
    if query.present?
      haystack = {
        'posts.title'         => 'A',
        'developers.username' => 'B',
        'channels.name'       => 'B',
        'posts.body'          => 'C'
      }.map do |column, rank|
        "setweight(to_tsvector('english', #{column}), '#{rank}')"
      end.join(' || ')

      joins(:developer, :channel)
      .joins("""
        join lateral (
          select
            ts_rank_cd(#{haystack}, plainto_tsquery('english', #{connection.quote(query)})) as rank
        ) ranks on true
      """)
      .where('ranks.rank > 0')
      .order('ranks.rank desc, posts.created_at desc')
    else
      order created_at: :desc
    end
  end
end
