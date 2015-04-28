class DeveloperDecorator < Draper::Decorator
  delegate_all

  def posts_count
    posts.presence && "(#{h.pluralize posts.count, 'post'})"
  end
end
