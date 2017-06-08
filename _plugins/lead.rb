#Generates a named anchor and wrapping tag from a string.

module Jekyll
  class LeadBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      @tag = markup
      super
    end

    def render(context)
      contents = super

      # pipe param through liquid to make additional replacements possible
      content = Liquid::Template.parse(contents).render context

      output  = "<p class=\"lead\">"
      output += content.strip
      output += "</p>"

      output
    end
  end
end

Liquid::Template.register_tag("lead", Jekyll::LeadBlock)
