class Developer < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true
  validates :twitter_handle, length: { maximum: 15 }, format: { with: /\A(?=.*[a-z])[a-z_\d]+\Z/i }, allow_nil: true

  def to_param
    username
  end

  def twitter_handle=(handle)
    write_attribute(:twitter_handle, handle.to_s.gsub(/^@+/, ''))
  end

  def posts_count
    posts.published.count
  end
end
