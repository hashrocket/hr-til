class Developer < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\z/ }
end
