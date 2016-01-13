class PostDecorator < SimpleDelegator
  def title
    draft_annotation = self.published? ? "" : " (draft)"
    "#{super}#{draft_annotation}"
  end
end
