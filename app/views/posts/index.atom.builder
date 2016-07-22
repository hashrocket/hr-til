atom_feed do |feed|
  feed.title SITE_NAME
  feed.updated posts.last.created_at

  posts.each do |post|
    feed.entry post do |entry|
      entry.title post.title
      entry.content(markdown_render(post.body), type: 'html')
      entry.author do |author|
        author.name post.developer_username
      end
    end
  end
end
