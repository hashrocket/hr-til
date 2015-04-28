class TagDecorator < Draper::Decorator
  include PresentsPosts
  delegate_all
end
