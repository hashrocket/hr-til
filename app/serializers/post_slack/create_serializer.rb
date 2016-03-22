class PostSlack::CreateSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    "#{object.developer_slack_display_name} created a new post "\
    "- <#{full_url}|#{encoded_title}> ##{object.channel_name}"
  end

  private

  def encoded_title
    CGI.escapeHTML(object.title)
  end

  def full_url
    Rails.configuration.server_url + post_path(object)
  end
end
