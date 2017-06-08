require_relative 'drops/manual_page.rb'

Jekyll::Hooks.register :site, :pre_render do |site, payload|
  man = Jekyll::ManualGenerator.new
  man.generate(site, payload)
end

module Jekyll
  class ManualGenerator # < Jekyll::Generator
    # priority :lowest

    def generate(site, payload)
      @site = site
      @payload = payload

      @manuals = {}

      puts @site.data["manuals"]

      # Handle all manuals
      @site.data["manuals"].each do |manualName|
        puts "Found manual '#{manualName}'"
        process_manual(manualName)
      end
    end

    def process_manual(manual)

      @manuals[manual] = { "pages" => {} }

      # Find all files with 'manual' set to <manual>
      @site.pages.each do |page|
        if page.data["layout"] == "documentation" and page.data["rel"]
          @manuals[manual]["pages"][page.data["rel"]] = page

          puts "Found page #{page}"
        end
      end

      # Put this in the @site.manuals[<manual>].pages property

      # Build a proper tree of these file references based on input

      puts "obj"
      # puts @site.data["manuals"][manual]

      # For each page, add parent, first child, prev and next properties, based on tree data

    end
  end
end
