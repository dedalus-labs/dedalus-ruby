# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Machines#watch_streaming
    class MachineWatchParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      # @!attribute machine_id
      #
      #   @return [String]
      required :machine_id, String

      # @!attribute last_event_id
      #
      #   @return [String, nil]
      optional :last_event_id, String

      # @!method initialize(machine_id:, last_event_id: nil, request_options: {})
      #   @param machine_id [String]
      #   @param last_event_id [String]
      #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
