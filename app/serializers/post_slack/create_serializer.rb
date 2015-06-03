class PostSlack::CreateSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    "#{object.developer_username} created a new post - <#{Rails.configuration.server_url}#{post_path(object)}|#{object.title}>"
  end
end
