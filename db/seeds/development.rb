# To download production data instead of these seeds, run
# rake db:restore_production_dump

5.times do |i|
  puts "Creating developer ##{i + 1}"
  username = Phil.name.downcase.delete(' ')
  Developer.create!(username: username, email: "#{username}@hashrocket.com")
end

40.times do |i|
  puts "Creating post ##{i + 1}"
  channel = Channel.all.sample

  Post.create!(body: Phil.words(100).capitalize,
    channel: channel,
    developer: Developer.all.sample,
    title: Phil.words(2).capitalize,
    likes: rand(1..10),
    created_at: Date.today - rand(30).days,
    published_at: [(Date.today - rand(30).days), nil].sample)
end
