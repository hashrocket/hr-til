class Developer < ActiveRecord::Base
  include Authem::User

  has_many :posts
  validates :username, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\z/ }
end
