class PostSlack::LikesThresholdSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    likes = object.likes

    "#{object.developer_slack_display_name}'s post has #{likes} likes! "\
    "#{emojis[likes_index(likes)].to_sym || '😀'} - <#{full_url}|#{encoded_title}>"
  end

  private

  def encoded_title
    CGI.escapeHTML(object.title)
  end

  def full_url
    Rails.configuration.server_url + post_path(object)
  end

  def likes_index(likes)
    (likes / 10) - 1
  end

  def emojis
    [ '🎉', '🎂', '✨', '💥', '❤️', '🎈', '👑', '🎓', '🏆', '💯 ']
  end
end
