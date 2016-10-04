# To download production data instead of these seeds, run
# rake db:restore_production_dump

channels = [
  { name: 'clojure', twitter_hashtag: 'clojure' },
  { name: 'command-line', twitter_hashtag: 'commandline' },
  { name: 'computer-science', twitter_hashtag: 'computerscience' },
  { name: 'design', twitter_hashtag: 'design' },
  { name: 'devops', twitter_hashtag: 'devops' },
  { name: 'elixir', twitter_hashtag: 'elixir' },
  { name: 'emberjs', twitter_hashtag: 'emberjs' },
  { name: 'git', twitter_hashtag: 'git' },
  { name: 'go', twitter_hashtag: 'go' },
  { name: 'html-css', twitter_hashtag: 'htmlcss' },
  { name: 'javascript', twitter_hashtag: 'javascript' },
  { name: 'mobile', twitter_hashtag: 'mobile' },
  { name: 'rails', twitter_hashtag: 'rails' },
  { name: 'react', twitter_hashtag: 'react' },
  { name: 'ruby', twitter_hashtag: 'ruby' },
  { name: 'sql', twitter_hashtag: 'sql' },
  { name: 'testing', twitter_hashtag: 'testing' },
  { name: 'vim', twitter_hashtag: 'vim' },
  { name: 'workflow', twitter_hashtag: 'workflow' },
]

print "Creating #{channels.length} channels"
channels.each do |channel|
  Channel.find_or_create_by!(name: channel[:name], twitter_hashtag: channel[:twitter_hashtag])
end
puts " ...done."

print "Creating developers"
5.times do
  username = Phil.name.parameterize
  puts username
  Developer.create!(username: username, email: "#{username}@hashrocket.com")
end
puts " ...done."

print "Creating posts"
40.times do
  channel = Channel.all.sample
  likes = rand(1..20)

  Post.create!(body: Phil.words(100).capitalize,
    channel: channel,
    developer: Developer.all.sample,
    title: Phil.words(2).capitalize,
    likes: likes,
    max_likes: likes,
    created_at: Date.today - rand(30).days,
    published_at: [(Date.today - rand(30).days), nil].sample)
end
puts " ...done."
