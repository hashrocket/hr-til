namespace :db do
  dump_file = 'tmp/latest.dump'

  def verify_exec(command)
    system(command)
    fail 'Command failed' unless $CHILD_STATUS.exitstatus.zero?
  end

  file dump_file do
    verify_exec "heroku pg:backups capture --app #{ENV.fetch('heroku_production_app_name')}"
    verify_exec "curl -o #{dump_file} `heroku pg:backups public-url -a #{ENV.fetch('heroku_production_app_name')}`"
  end

  desc 'Download and restore prod db; requires heroku toolbelt and production db access'
  task restore_production_dump: dump_file do
    puts 'Restoring latest production data'
    verify_exec "pg_restore --verbose --clean --no-acl --no-owner #{dump_file} | rails dbconsole"
    puts 'Completed successfully!'
  end

  desc 'Automatically tweet well-liked posts'
  task tweet_popular_posts: :environment do

    puts 'Finding a post'
    if (2..4).include?(Date.today.wday)

      popular_post = Post.popular.sample

      puts "Tweeting post ##{popular_post.id}"
      SocialMessaging::TwitterStatus.new(popular_post).post_unlimited
      print " ...done"
    else
      puts 'No popular posts found'
    end
  end
end
