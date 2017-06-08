module Jekyll
  module Drops
    class ManualPage < Liquid::Drop
      extend Forwardable

      # Allow direct access for data and url and some more
      def_delegator :@page, :data
      def_delegator :@page, :url
      def_delegator :@page, :rel

      def initialize(page, payload)
        @payload = payload
        @page = page
      end

      def title
        @page.data["title"] + "HELLO"
      end


    end
  end
end
