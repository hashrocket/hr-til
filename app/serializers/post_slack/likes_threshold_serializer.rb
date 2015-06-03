class PostSlack::LikesThresholdSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    likes = object.likes

    "#{object.developer_username}'s post has #{likes} likes! #{emojis[likes.to_s.to_sym] || '😀'} - <#{Rails.configuration.server_url}#{post_path(object)}|#{object.title}>"
  end

  def emojis
    { '10': '🎉', '20': '🎂', '30': '✨', '40': '💥', '50': '❤️', '60': '🎈', '70': '👑', '80': '🎓', '90': '🏆', '100': '💯 '}
  end
end
