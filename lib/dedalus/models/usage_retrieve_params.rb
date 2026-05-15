# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Usage#retrieve
    class UsageRetrieveParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      # @!attribute period_start
      #   Billing period start (YYYY-MM-DD). Defaults to first of current month.
      #
      #   @return [String, nil]
      optional :period_start, String

      # @!method initialize(period_start: nil, request_options: {})
      #   @param period_start [String] Billing period start (YYYY-MM-DD). Defaults to first of current month.
      #
      #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
