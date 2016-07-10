class PostScrubber < Rails::Html::PermitScrubber
  def allowed_node?(node)
    !%w(script).include?(node.name)
  end
end
