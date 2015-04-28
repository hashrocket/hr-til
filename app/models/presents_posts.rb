# base must respond to:
# posts
# h.pluralize
#
module PresentsPosts
  def posts_count
    posts.presence && "(#{h.pluralize posts.count, 'post'})"
  end
end
