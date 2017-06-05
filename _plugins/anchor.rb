#Generates a named anchor and wrapping tag from a string.

module Jekyll
  class AnchorBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      @tag = markup
      super
    end

    def render(context)
      contents = super

      # pipe param through liquid to make additional replacements possible
      content = Liquid::Template.parse(contents).render context

      #strip out special chars and replace spaces with hyphens
      safeContent = content.rstrip.lstrip.gsub(/[^\w\s]/,'').gsub(/[\s]/,'-').downcase

      output  = "<#{@tag}><a name=\"#{safeContent}\"></a>"
      output += content.strip
      output += "</#{@tag}>"

      output
    end
  end
end

Liquid::Template.register_tag("anchor", Jekyll::AnchorBlock)
