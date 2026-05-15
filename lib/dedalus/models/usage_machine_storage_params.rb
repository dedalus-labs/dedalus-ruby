# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Usage#machine_storage
    class UsageMachineStorageParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      # @!attribute machine_id
      #   Optional machine ID filter.
      #
      #   @return [String, nil]
      optional :machine_id, String

      # @!attribute period_end
      #   Last UTC usage date to include (YYYY-MM-DD). Defaults to current time.
      #
      #   @return [String, nil]
      optional :period_end, String

      # @!attribute period_start
      #   Usage period start (YYYY-MM-DD). Defaults to first of current month.
      #
      #   @return [String, nil]
      optional :period_start, String

      # @!method initialize(machine_id: nil, period_end: nil, period_start: nil, request_options: {})
      #   @param machine_id [String] Optional machine ID filter.
      #
      #   @param period_end [String] Last UTC usage date to include (YYYY-MM-DD). Defaults to current time.
      #
      #   @param period_start [String] Usage period start (YYYY-MM-DD). Defaults to first of current month.
      #
      #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
