class PostSlack::CreateSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    "#{object.developer_slack_display_name} created a new post "\
    "- <#{Rails.configuration.server_url}#{post_path(object)}|#{object.title}> ##{object.channel_name}"
  end
end
