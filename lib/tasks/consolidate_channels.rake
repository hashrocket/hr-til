namespace :db do
  task consolidate_channels: :environment do
    mobile   = Channel.find_or_create_by(name: 'mobile')
    html_css = Channel.find_or_create_by(name: 'html/css')
    sql      = Channel.find_or_create_by(name: 'sql')

    js       = Channel.find_by_name('javascript')
    dev      = Channel.find_by_name('development')

    puts 'Consolidating channels!'
    Post.all.each do |post|
      if %w(reactjs emberjs coffeescript).include? post.channel_name
        puts "Merging post ##{post.id} into javascript"
        post.channel = js
      elsif %w(android ios).include? post.channel_name
        puts "Merging post ##{post.id} into mobile"
        post.channel = mobile
      elsif %w(assembly algorithms).include? post.channel_name
        puts "Merging post ##{post.id} into development"
        post.channel = dev
      elsif %w(postgres).include? post.channel_name
        puts "Merging post ##{post.id} into development"
        post.channel = sql
      elsif %w(html css).include? post.channel_name
        puts "Merging post ##{post.id} into html/css"
        post.channel = html_css
      end
      post.save!
    end

    puts 'Destroying old channels!'
    Channel.all.each do |channel|
      channel.destroy! if %w(reactjs emberjs coffeescript android ios algorithms assembly postgres html css).include? channel.name
    end
  end
end
