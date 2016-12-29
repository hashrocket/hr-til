ActiveModel::Serializer.config do |config|
  config.embed = :ids
  config.embed_in_root = true
end
