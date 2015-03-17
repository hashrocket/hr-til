class Developer < ActiveRecord::Base
  include Authem::User

  validates :username, presence: true, uniqueness: true
end
