require 'red_carpet_code_highlighter'
require 'tilt/redcarpet'
require 'post_scrubber'

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
    sanitize markdown.render(md), scrubber: PostScrubber.new
  end
end
