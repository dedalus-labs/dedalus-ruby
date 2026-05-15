# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class ArtifactList < Dedalus::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Dedalus::Models::Machines::Artifact>, nil]
        required :items, -> { Dedalus::Internal::Type::ArrayOf[Dedalus::Machines::Artifact] }, nil?: true

        # @!attribute next_cursor
        #
        #   @return [String, nil]
        optional :next_cursor, String

        # @!method initialize(items:, next_cursor: nil)
        #   @param items [Array<Dedalus::Models::Machines::Artifact>, nil]
        #   @param next_cursor [String]
      end
    end
  end
end
