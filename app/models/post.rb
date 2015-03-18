class Post < ActiveRecord::Base

  validates_presence_of :body
  validate :body_size
  belongs_to :developer

  MAX_WORDS = 200

  def developer_username
    developer.username
  end

  private

  def body_size
    if body && body.split(' ').size > MAX_WORDS
      errors.add :body, "is too long"
    end
  end
end
