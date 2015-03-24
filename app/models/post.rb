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
    first_line = body.split("\n").first
    self.title = if first_line.size <= 50
                   first_line
                 else
                   first_line[0..49].chop + '...'
                 end
  end

  def body_size
    if body && body.split(' ').size > MAX_WORDS
      errors.add :body, "is too long"
    end
  end
end
