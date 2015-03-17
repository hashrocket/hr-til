class Post < ActiveRecord::Base

  validates_presence_of :body
  belongs_to :developer

  def developer_username
    developer.username
  end
end
