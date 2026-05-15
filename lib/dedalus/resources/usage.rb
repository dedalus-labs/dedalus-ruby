# frozen_string_literal: true

module Dedalus
  module Resources
    class Usage
      # Get usage summary
      #
      # @overload retrieve(period_start: nil, request_options: {})
      #
      # @param period_start [String] Billing period start (YYYY-MM-DD). Defaults to first of current month.
      #
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::OrgUsage]
      #
      # @see Dedalus::Models::UsageRetrieveParams
      def retrieve(params = {})
        parsed, options = Dedalus::UsageRetrieveParams.dump_request(params)
        query = Dedalus::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/usage",
          query: query,
          model: Dedalus::OrgUsage,
          options: options
        )
      end

      # List machine compute usage breakdown
      #
      # @overload machine_compute(granularity: nil, machine_id: nil, period_end: nil, period_start: nil, request_options: {})
      #
      # @param granularity [String] Usage breakdown granularity: hour or day. Defaults to hour.
      #
      # @param machine_id [String] Optional machine ID filter.
      #
      # @param period_end [String] Last UTC usage date to include (YYYY-MM-DD). Defaults to current time.
      #
      # @param period_start [String] Usage period start (YYYY-MM-DD). Defaults to first of current month.
      #
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::MachineComputeUsage]
      #
      # @see Dedalus::Models::UsageMachineComputeParams
      def machine_compute(params = {})
        parsed, options = Dedalus::UsageMachineComputeParams.dump_request(params)
        query = Dedalus::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/usage/machines/compute",
          query: query,
          model: Dedalus::MachineComputeUsage,
          options: options
        )
      end

      # List machine storage usage breakdown
      #
      # @overload machine_storage(machine_id: nil, period_end: nil, period_start: nil, request_options: {})
      #
      # @param machine_id [String] Optional machine ID filter.
      #
      # @param period_end [String] Last UTC usage date to include (YYYY-MM-DD). Defaults to current time.
      #
      # @param period_start [String] Usage period start (YYYY-MM-DD). Defaults to first of current month.
      #
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::MachineStorageUsage]
      #
      # @see Dedalus::Models::UsageMachineStorageParams
      def machine_storage(params = {})
        parsed, options = Dedalus::UsageMachineStorageParams.dump_request(params)
        query = Dedalus::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/usage/machines/storage",
          query: query,
          model: Dedalus::MachineStorageUsage,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dedalus::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
