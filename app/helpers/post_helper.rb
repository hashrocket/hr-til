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
end
