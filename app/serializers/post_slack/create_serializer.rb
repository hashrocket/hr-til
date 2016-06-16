class PostSlack::CreateSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    "#{milestone_header}#{object.developer_slack_display_name} created a new post "\
    "- <#{full_url}|#{encoded_title}> ##{object.channel_name}"
  end

  private

  def milestone_header
    published_posts_count = Post.published.reload.count
    if published_posts_count % 100 == 0 && !published_posts_count.zero?
      "This is the #{published_posts_count}th post to #{SITE_NAME}! "
    end
  end

  def encoded_title
    # Escape only three symbols:
    # https://api.slack.com/docs/formatting#how_to_escape_characters
    object.title.gsub('&', '&amp;').gsub('<', '&lt;').gsub('>','&gt;')
  end

  def full_url
    Rails.configuration.server_url + post_path(object)
  end
end
