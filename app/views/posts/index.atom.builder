atom_feed do |feed|
  feed.title SITE_NAME
  feed.updated @post_days.keys.first

  @post_days.each do |days, posts|
    posts.each do |post|
      feed.entry post do |entry|
        entry.title post.title
        entry.content post.body
        entry.author do |author|
          author.name post.developer_username
        end
      end
    end
  end
end
