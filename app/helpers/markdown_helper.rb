module MarkdownHelper
  def markdown
    @markdown ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      fenced_code_blocks: true
    )
  end

  def markdown_render(md)
    raw markdown.render md
  end
end
