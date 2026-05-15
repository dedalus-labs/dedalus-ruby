# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Previews#delete
      class PreviewDeleteParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute preview_id
        #
        #   @return [String]
        required :preview_id, String

        # @!method initialize(machine_id:, preview_id:, request_options: {})
        #   @param machine_id [String]
        #   @param preview_id [String]
        #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
