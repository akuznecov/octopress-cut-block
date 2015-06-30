module Jekyll
  class CutBlock < Liquid::Block
    def initialize(tag_name, title, token)
      @title = title
      super
    end

    def render(context)
      text = super
      output = "<div class='cut_block'>"
      if !@title.empty?
        output += "<h4 class='cut_block_head'>#{@title}</h4>"
      end
      output += "<a href='#' class='icon icon-zoom-in cut_block_show'>"
      output += "click to show"
      output += "</a>"
      output += "<a href='#' class='icon icon-zoom-out cut_block_hide' style='display: none;'>"
      output += "click to hide"
      output += "</a>"
      output += "<div class='cut_block_content' style='display: none;'>"
      output += "  #{text}"
      output += "</div>"
      output += "</div>"
      output
    end

  end
end

Liquid::Template.register_tag('cut', Jekyll::CutBlock)