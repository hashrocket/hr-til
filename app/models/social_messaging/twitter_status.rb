module SocialMessaging
  class TwitterStatus
    attr_reader :post

    def initialize(post)
      @post = post
    end

    def post_to_twitter
      return if post.draft? || post.tweeted
      if ENV['update_twitter_with_post'] == 'true'
        TwitterClient.update(status)
        post.tweeted = true
        post.save
      end
    end

    private

    def title
      post.title
    end

    def name
      post.twitter_handle
    end

    def category
      post.channel_name.delete('-')
    end

    def host
      ENV.fetch('host')
    end

    def status
      "#{title} #{Rails.application.routes.url_helpers.post_url(titled_slug: post.to_param, host: host)} via @#{name} #til ##{category}"
    end
  end
end
