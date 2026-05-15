# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Machines#delete
    class MachineDeleteParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      # @!attribute machine_id
      #
      #   @return [String]
      required :machine_id, String

      # @!method initialize(machine_id:, request_options: {})
      #   @param machine_id [String]
      #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
