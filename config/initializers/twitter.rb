TwitterClient = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["twitter_consumer_key"]
  config.consumer_secret     = ENV["twitter_consumer_secret"]
  config.access_token        = ENV["twitter_access_token"]
  config.access_token_secret = ENV["twitter_access_token_secret"]
end
