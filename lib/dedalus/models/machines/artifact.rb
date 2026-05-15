# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Artifacts#retrieve
      class Artifact < Dedalus::Internal::Type::BaseModel
        # @!attribute artifact_id
        #
        #   @return [String]
        required :artifact_id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute size_bytes
        #
        #   @return [Integer]
        required :size_bytes, Integer

        # @!attribute download_url
        #
        #   @return [String, nil]
        optional :download_url, String

        # @!attribute execution_id
        #
        #   @return [String, nil]
        optional :execution_id, String

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!attribute mime_type
        #
        #   @return [String, nil]
        optional :mime_type, String

        # @!attribute sha256
        #
        #   @return [String, nil]
        optional :sha256, String

        # @!method initialize(artifact_id:, created_at:, machine_id:, name:, size_bytes:, download_url: nil, execution_id: nil, expires_at: nil, mime_type: nil, sha256: nil)
        #   @param artifact_id [String]
        #   @param created_at [Time]
        #   @param machine_id [String]
        #   @param name [String]
        #   @param size_bytes [Integer]
        #   @param download_url [String]
        #   @param execution_id [String]
        #   @param expires_at [Time]
        #   @param mime_type [String]
        #   @param sha256 [String]
      end
    end
  end
end
