# frozen_string_literal: true

module Dedalus
  module Internal
    # @generic Elem
    #
    # @example
    #   if cursor_page.has_next?
    #     cursor_page = cursor_page.next_page
    #   end
    #
    # @example
    #   cursor_page.auto_paging_each do |machine|
    #     puts(machine)
    #   end
    class CursorPage
      include Dedalus::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :items

      # @return [String, nil]
      attr_accessor :next_cursor

      # @return [Boolean]
      def next_page?
        !items.to_a.empty? && !next_cursor.to_s.empty?
      end

      # @raise [Dedalus::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Dedalus::Internal::Util.deep_merge(@req, {query: {cursor: next_cursor}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.items&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Dedalus::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {items: Array => items}
          @items = items.map { Dedalus::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        @next_cursor = page_data[:next_cursor]
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Dedalus::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} next_cursor=#{next_cursor.inspect}>"
      end
    end
  end
end
