require 'red_carpet_code_highlighter'

module MarkdownHelper
  def markdown
    @markdown ||= Redcarpet::Markdown.new(
      RedCarpetCodeHighlighter,
      autolink: true,
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      strikethrough: true,
      space_after_headers: true,
      underline: true,
      highlight: true,
      quote: true
    )
  end

  def markdown_render(md)
    raw markdown.render md
  end
end
