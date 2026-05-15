# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class PreviewList < Dedalus::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Dedalus::Models::Machines::Preview>, nil]
        required :items, -> { Dedalus::Internal::Type::ArrayOf[Dedalus::Machines::Preview] }, nil?: true

        # @!attribute next_cursor
        #
        #   @return [String, nil]
        optional :next_cursor, String

        # @!method initialize(items:, next_cursor: nil)
        #   @param items [Array<Dedalus::Models::Machines::Preview>, nil]
        #   @param next_cursor [String]
      end
    end
  end
end
