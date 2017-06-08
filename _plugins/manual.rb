require_relative 'drops/manual_page.rb'

Jekyll::Hooks.register :site, :pre_render do |site, payload|
  man = Jekyll::ManualGenerator.new
  man.generate(site, payload)
end

module Jekyll
  module Drops

    class Manuals < Liquid::Drop
      extend Forwardable

      def initialize(path, jekyll)
        @manuals = {}
      end

      def [](name)
        return @manuals[name]
      end

      def []=(name, manual)
        @manuals[name] = manual
      end
    end

    class Manual < Liquid::Drop
      extend Forwardable

      def initialize()
        @pages = {}
      end

      attr_accessor :pages
    end
  end
end

module Jekyll
  class ManualGenerator # < Jekyll::Generator
    # priority :lowest

    def generate(site, payload)
      @site = site
      @payload = payload

      @payload["manuals"] = @manuals = Drops::Manuals.new(nil, nil)

      # Handle all manuals
      @site.data["manuals"].each_pair do |key, manual|
        @manuals[key] = Drops::Manual.new

        process_manual(manual, @manuals[key], key)
      end
    end

    def process_manual(config, manual, manualName)

      # Find all files with 'manual' set to <manual>
      @site.pages.each do |page|
        if page.data["layout"] == "documentation" and page.data["ref"] and page.data["manual"] == manualName
          manual.pages[page.data["ref"]] = page
        end
      end

      # We have a proper tree with referencs
      # Walk over it, recursively, to add new properties to the pages

      # puts @site.data["manuals"][manual]

      # For each page, add parent, first child, prev and next properties, based on tree data
      @site.data["manuals"][manualName]["entries"].each_with_index do |item, index|
        walk_tree(manual, item, index, @site.data["manuals"][manualName])
      end
    end

    private

    def walk_tree(manual, configItem, nthChild, parentItem)
      # Page object for current item
      page = manual.pages[configItem["ref"]]

      page.data["parent"] = manual.pages[parentItem["ref"]] if parentItem["ref"]

      if configItem["entries"] and configItem["entries"].length > 0
        page.data["first_child"] = manual.pages[configItem["entries"][0]["ref"]]
      end

      # If this is not the first child, show 'prev'
      if nthChild != 0
        page.data["prev"] = manual.pages[parentItem["entries"][nthChild - 1]["ref"]]
        page.data["first_sibling"] = manual.pages[parentItem["entries"][0]["ref"]]
      end

      if nthChild != parentItem["entries"].length - 1
        page.data["next"] = manual.pages[parentItem["entries"][nthChild + 1]["ref"]]
      end

      # Walk recursive
      if configItem["entries"]
        configItem["entries"].each_with_index do |item, index|
          walk_tree(manual, item, index, configItem)
        end
      end

    end
  end
end
