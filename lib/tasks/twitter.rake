namespace :twitter do
  desc 'Tweets a random published post'
  task tweet_random_post: :environment do
    random_post = Post.published.sample
    puts "Tweeting random post: #{post.title}... "
    SocialMessaging::TwitterStatus.new(post).post_to_twitter
    print 'completed.'
  end
end
