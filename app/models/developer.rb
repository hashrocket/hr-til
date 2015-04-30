class Developer < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true

  def twitter_handle=(handle)
    write_attribute(:twitter_handle, handle.to_s.gsub(/^@/, ''))
  end
end
