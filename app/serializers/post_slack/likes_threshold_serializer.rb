class PostSlack::LikesThresholdSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    likes = object.likes

    "#{object.developer_slack_display_name}'s post has #{likes} likes! "\
    "#{emojis[likes_index(likes)].to_sym || '😀'} - <#{Rails.configuration.server_url}#{post_path(object)}|#{object.title}>"
  end

  private

  def likes_index(likes)
    (likes / 10) - 1
  end

  def emojis
    [ '🎉', '🎂', '✨', '💥', '❤️', '🎈', '👑', '🎓', '🏆', '💯 ']
  end
end
