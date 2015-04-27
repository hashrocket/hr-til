class Post < ActiveRecord::Base

  validates_presence_of :body
  validates_presence_of :tag
  validates :title, presence: true, length: { maximum: 50 }
  validate :body_size
  before_create :generate_slug

  belongs_to :developer
  belongs_to :tag

  MAX_WORDS = 200

  def developer_username
    developer.username
  end

  def tag_name
    tag.name
  end

  def to_param
    slug + '-' + slugified_title
  end

  private

  def body_size
    if body && body.split(' ').size > MAX_WORDS
      errors.add :body, "is too long"
    end
  end

  def generate_slug
    self.slug = SecureRandom.hex(5)
  end

  def slugified_title
    title.downcase.strip.gsub(/\s+/, '-').gsub(/(?![a-z0-9\-])./, "")
  end
end
