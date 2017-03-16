class Channel < ApplicationRecord
  validates_presence_of :name
  has_many :posts

  def to_param
    "#{id}-#{name}"
  end

  def posts_count
    posts.published.count
  end
end
