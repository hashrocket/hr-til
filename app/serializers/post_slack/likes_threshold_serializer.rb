class PostSlack::LikesThresholdSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  root false
  attributes :text

  def text
    likes = object.likes
    emoji_likes = likes.times.map { emojis.sample }.join

    "#{object.developer_username}'s post has #{likes} likes! #{emoji_likes} - <#{Rails.configuration.server_url}#{post_path(object)}|#{object.title}>"
  end

  def emojis
    %w(🎂 🎉 💥 🎁 ✨ ❤️ 👑 😀 🍕)
  end
end
