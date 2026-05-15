# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Artifacts#retrieve
      class ArtifactRetrieveParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute artifact_id
        #
        #   @return [String]
        required :artifact_id, String

        # @!method initialize(machine_id:, artifact_id:, request_options: {})
        #   @param machine_id [String]
        #   @param artifact_id [String]
        #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
