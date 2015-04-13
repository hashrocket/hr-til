class Post < ActiveRecord::Base

  validates_presence_of :body
  validates_presence_of :tag
  validates :title, presence: true, length: { maximum: 50 }
  validate :body_size

  belongs_to :developer
  belongs_to :tag

  MAX_WORDS = 200

  def developer_username
    developer.username
  end

  def tag_name
    tag.name
  end

  private

  def body_size
    if body && body.split(' ').size > MAX_WORDS
      errors.add :body, "is too long"
    end
  end
end
