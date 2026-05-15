# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Terminals#list
      class TerminalListParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute cursor
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(machine_id:, cursor: nil, limit: nil, request_options: {})
        #   @param machine_id [String]
        #   @param cursor [String]
        #   @param limit [Integer]
        #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
