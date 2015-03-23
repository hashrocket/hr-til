class Tag < ActiveRecord::Base
  validates_presence_of :name
  has_many :posts
end
