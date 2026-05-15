# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::SSH#retrieve
      class SSHRetrieveParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String

        # @!method initialize(machine_id:, session_id:, request_options: {})
        #   @param machine_id [String]
        #   @param session_id [String]
        #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
