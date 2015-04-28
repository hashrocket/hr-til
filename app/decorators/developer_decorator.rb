class DeveloperDecorator < Draper::Decorator
  include PresentsPosts
  delegate_all
end
