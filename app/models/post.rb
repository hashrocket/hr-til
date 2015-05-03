class Post < ActiveRecord::Base
  validates_presence_of :body
  validates_presence_of :tag_id
  validates :title, presence: true, length: { maximum: 50 }
  validate :body_size
  before_create :generate_slug

  belongs_to :developer
  belongs_to :tag

  MAX_WORDS = 200

  def developer_username
    developer.username
  end

  def developer_twitter_handle
    developer.twitter_handle
  end

  def tag_name
    tag.name
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
end
