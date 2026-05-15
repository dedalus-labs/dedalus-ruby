# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class ArtifactRef < Dedalus::Internal::Type::BaseModel
        # @!attribute artifact_id
        #
        #   @return [String]
        required :artifact_id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(artifact_id:, name:)
        #   @param artifact_id [String]
        #   @param name [String]
      end
    end
  end
end
