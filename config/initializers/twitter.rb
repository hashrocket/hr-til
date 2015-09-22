TwitterClient = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["HRTIL_TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["HRTIL_TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["HRTIL_TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["HRTIL_TWITTER_ACCESS_TOKEN_SECRET"]
end
