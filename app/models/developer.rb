class Developer < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true
  validates :twitter_handle, length: { maximum: 15 }, format: { with: /\A(?=.*[a-z])[a-z\d]+\Z/i }, allow_blank: true
  after_initialize :set_developer_defaults

  def twitter_handle=(handle)
    write_attribute(:twitter_handle, handle.to_s.gsub(/^@/, ''))
  end

  private

  def set_developer_defaults
    self.admin ||= false
  end
end
