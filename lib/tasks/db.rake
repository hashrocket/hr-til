namespace :db do
  dump_file = 'tmp/latest.dump'

  def verify_exec(command)
    system(command)
    fail 'Command failed' unless $CHILD_STATUS.exitstatus.zero?
  end

  file dump_file do
    verify_exec "heroku pg:backups capture --app #{ENV['heroku_production_app_name']}"
    verify_exec "curl -o #{dump_file} `heroku pg:backups public-url -a #{ENV['heroku_production_app_name']}`"
  end

  desc 'Download and restore prod db; requires heroku toolbelt and production db access'
  task restore_production_dump: dump_file do
    puts 'Restoring latest production data'
    verify_exec "pg_restore --verbose --clean --no-acl --no-owner #{dump_file} | rails dbconsole"
    puts 'Completed successfully!'
  end

  desc 'Tweeting untweeted posts (when feature is enabled)'
  task touch_untweeted_posts: :environment do
    puts 'Searching for published but untweeted posts...'
    posts = Post.published_and_untweeted

    if posts.any?
      post = posts.sample
      puts "Tweeting untweeted post: ##{post.id}"
      SocialMessaging::TwitterStatus.new(post).post_to_twitter
      puts 'Completed successfully!'
    else
      puts 'All published posts have been tweeted!'
    end
  end

  desc 'Merge retiring channels'
  task merge_channels: :environment do
    Channel.transaction do
      print 'Creating #workflow channel'
      workflow = Channel.create!(name: 'workflow')
      puts ' ...done.'

      print 'Creating #command-line channel'
      command_line = Channel.create!(name: 'command-line')
      puts ' ...done.'

      print 'Updating retired channels\' posts'
      Channel.where(name: %w(internet consulting development)).map(&:posts).flatten.each do |post|
        post.channel = workflow
        post.save!
      end

      Channel.find_by(name: 'bash').posts.each do |post|
        post.channel = command_line
        post.save!
      end
      puts ' ...done.'

      print 'Destroying retired channels'
      Channel.where(name: %w(internet consulting development bash)).destroy_all
      puts ' ...done.'
    end
  end
end
