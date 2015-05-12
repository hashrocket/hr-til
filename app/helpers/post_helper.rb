module PostHelper
  def multiple_posts?
    Post.count > 1
  end

  def newest_post?(post)
    post == Post.order(created_at: :desc).first
  end

  def oldest_post?(post)
    post == Post.order(created_at: :desc).last
  end

  def previous_post(post)
    posts = Post.order created_at: :desc
    posts[posts.index(post) + 1]
  end

  def next_post(post)
    posts = Post.order created_at: :desc
    posts[posts.index(post) - 1]
  end

  def editable?(post)
    current_developer && (current_developer == post.developer || current_developer.admin?)
  end

  def tweet_link(post)
    title = post.title
    handle = post.twitter_handle
    hashtag = post.tag_name
    url = Rails.configuration.server_url + post_path(post)

    content_tag(:a, 'Tweet', href: 'http://twitter.com/share', class: 'twitter-share-button',
                             'data-text': "Today I learned: #{title}", 'data-via': "#{handle}",
                             'data-hashtags': "#{hashtag}", 'data-url': "#{url}")
  end
end
