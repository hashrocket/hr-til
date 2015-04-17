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
    current_developer && current_developer == post.developer
  end

  def remaining_words(body)
    Post::MAX_WORDS - body.split(' ').size
  end

  def remaining_words_formatter(rw)
    noun = rw == 1 ? 'word' : 'words'
    noun + ' available'
  end

  def tweet_link(post)
    title = post.title
    handle = 'hashrocket'
    hashtag = post.tag_name
    root = Rails.env.production? ? PROD_ROOT : TEST_ROOT
    url = [root, post_path(post)].join

    content_tag(:a, 'Tweet', href: "http://twitter.com/share", class:"twitter-share-button",
                'data-text': "Today I learned: #{title}", 'data-via': "#{handle}",
                'data-hashtags': "#{hashtag}", 'data-url': "#{url}")
  end
end
