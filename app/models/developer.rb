class Developer < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true
  validates :twitter_handle, length: { maximum: 15 }, format: { with: /\A(?=.*[a-z])[a-z_\d]+\Z/i }, allow_blank: true

  def self.editor_options
    ['Text Field', 'Ace (w/ Vim)', 'Ace'].freeze
  end

  def to_param
    username
  end

  def twitter_handle=(handle)
    twitter_handle = handle.blank? ? nil : handle.to_s.gsub(/^@+/, '')
    write_attribute(:twitter_handle, twitter_handle)
  end

  def posts_count
    posts.published.count
  end
end
