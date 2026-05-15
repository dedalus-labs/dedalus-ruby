# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Terminals#retrieve
      class TerminalRetrieveParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute terminal_id
        #
        #   @return [String]
        required :terminal_id, String

        # @!method initialize(machine_id:, terminal_id:, request_options: {})
        #   @param machine_id [String]
        #   @param terminal_id [String]
        #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
