class PostDecorator < SimpleDelegator
  def self.wrap(collection)

  end
  def title
    draft_annotation = self.published ? "" : " (draft)"
    "#{super}#{draft_annotation}"
  end
end
