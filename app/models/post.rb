class Post < ActiveRecord::Base
  validates_presence_of :body
  validates_presence_of :channel_id
  validates :title, presence: true, length: { maximum: 50 }
  validate :body_size, if: -> { body.present? }
  validates_presence_of :developer

  belongs_to :developer
  belongs_to :channel

  before_create :generate_slug
  after_commit :notify_slack, on: :create

  MAX_WORDS = 200

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

  private

  def word_count
    body.split(' ').size
  end

  def words_remaining
    MAX_WORDS - word_count
  end

  def body_size
    if word_count > MAX_WORDS
      words_remaining_abs = words_remaining.abs
      errors.add :body, "of this post is too long. It is #{words_remaining_abs} #{'word'.pluralize(words_remaining_abs)} over the limit of 200 words"
    end
  end

  def generate_slug
    self.slug = SecureRandom.hex(5)
  end

  def slugified_title
    title.downcase.strip.gsub(/\s+/, '-').gsub(/(?![a-z0-9\-])./, '')
  end

  def notify_slack
    SlackNotifier.new.async.perform(self)
  end

  def developer_twitter_handle
    developer.twitter_handle
  end

end
