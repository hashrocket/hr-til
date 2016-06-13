require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class RedCarpetCodeHighlighter < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet

  def initialize(extensions = {})
    super extensions.merge(link_attributes: { target: "_blank" })
  end
end
