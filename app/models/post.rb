class Post < ActiveRecord::Base

  validates_presence_of :body
  validates_presence_of :tag
  validate :body_size

  belongs_to :developer
  belongs_to :tag

  before_save :create_title

  MAX_WORDS = 200

  def developer_username
    developer.username
  end

  def tag_name
    tag.name
  end

  private

  def create_title
    self.title = body.split("\n").first
  end

  def body_size
    if body && body.split(' ').size > MAX_WORDS
      errors.add :body, "is too long"
    end
  end
end
