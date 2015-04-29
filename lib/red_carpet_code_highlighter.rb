require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class RedCarpetCodeHighlighter < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end
