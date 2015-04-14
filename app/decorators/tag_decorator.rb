class TagDecorator < Draper::Decorator
  delegate_all

  def posts_count
    count = posts.count
    if count > 1
      "(#{count} posts)"
    elsif count == 1
      "(#{count} post)"
    end
  end
end
