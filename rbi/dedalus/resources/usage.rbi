# typed: strong

module Dedalus
  module Resources
    class Usage
      # Get usage summary
      sig do
        params(
          period_start: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::OrgUsage)
      end
      def retrieve(
        # Billing period start (YYYY-MM-DD). Defaults to first of current month.
        period_start: nil,
        request_options: {}
      )
      end

      # List machine compute usage breakdown
      sig do
        params(
          granularity: String,
          machine_id: String,
          period_end: String,
          period_start: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::MachineComputeUsage)
      end
      def machine_compute(
        # Usage breakdown granularity: hour or day. Defaults to hour.
        granularity: nil,
        # Optional machine ID filter.
        machine_id: nil,
        # Last UTC usage date to include (YYYY-MM-DD). Defaults to current time.
        period_end: nil,
        # Usage period start (YYYY-MM-DD). Defaults to first of current month.
        period_start: nil,
        request_options: {}
      )
      end

      # List machine storage usage breakdown
      sig do
        params(
          machine_id: String,
          period_end: String,
          period_start: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::MachineStorageUsage)
      end
      def machine_storage(
        # Optional machine ID filter.
        machine_id: nil,
        # Last UTC usage date to include (YYYY-MM-DD). Defaults to current time.
        period_end: nil,
        # Usage period start (YYYY-MM-DD). Defaults to first of current month.
        period_start: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dedalus::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
