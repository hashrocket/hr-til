class Developer < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true

  def posts_count
    posts.count
  end
end
