# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Executions#delete
      class ExecutionDeleteParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute execution_id
        #
        #   @return [String]
        required :execution_id, String

        # @!method initialize(machine_id:, execution_id:, request_options: {})
        #   @param machine_id [String]
        #   @param execution_id [String]
        #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
