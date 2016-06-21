# To download production data instead of these seeds, run
# rake db:restore_production_dump

channels = %w(
  clojure
  command-line
  computer-science
  design
  devops
  elixir
  emberjs
  git
  go
  html-css
  javascript
  mobile
  rails
  react
  ruby
  sql
  testing
  vim
  workflow
)

print "Creating #{channels.length} channels"
channels.each do |channel|
  Channel.find_or_create_by!(name: channel)
end
puts " ...done."

print "Creating developers"
5.times do
  username = Phil.name.downcase.delete(' ')
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
