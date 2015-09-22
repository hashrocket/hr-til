module SocialMessaging
  class TwitterStatus
    attr_reader :post

    def initialize(post)
      @post = post
    end

    def status
      title = post.title
      name  = post.developer.twitter_handle || post.developer_username
      category = post.channel.name
      "#{title} - from @#{name} #til ##{category}"
    end

    def post_to_twitter
      return if post.draft? || post.tweeted
      if ENV['update_twitter_with_post'] == 'true'
        TwitterClient.update(status)
        post.tweeted = true
        post.save
      end
    end

  end
end
