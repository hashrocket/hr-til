module MarkdownHelper
  def markdown
    @markdown ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true
    )
  end
end
