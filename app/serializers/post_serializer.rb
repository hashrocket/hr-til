class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at, :updated_at, :title, :slug, :likes, :published_at

  has_one :developer
  has_one :channel
end
