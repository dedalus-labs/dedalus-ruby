# frozen_string_literal: true

module Dedalus
  module Models
    class MachineList < Dedalus::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dedalus::Models::MachineListItem>, nil]
      required :items, -> { Dedalus::Internal::Type::ArrayOf[Dedalus::MachineListItem] }, nil?: true

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      optional :next_cursor, String

      # @!method initialize(items:, next_cursor: nil)
      #   @param items [Array<Dedalus::Models::MachineListItem>, nil]
      #   @param next_cursor [String]
    end
  end
end
