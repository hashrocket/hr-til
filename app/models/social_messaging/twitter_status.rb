module SocialMessaging
  class TwitterStatus
    attr_reader :post

    def initialize(post)
      @post = post
    end

    def status
      title = post.title
      name  = post.twitter_handle
      category = post.channel_name
      host = ENV.fetch('host')
      "#{title} - from @#{name} #{Rails.application.routes.url_helpers.post_url(titled_slug: post.to_param, host: host)} #til ##{category}"
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
