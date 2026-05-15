# typed: strong

module Dedalus
  module Models
    class UsageMachineComputeParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dedalus::UsageMachineComputeParams, Dedalus::Internal::AnyHash)
        end

      # Usage breakdown granularity: hour or day. Defaults to hour.
      sig { returns(T.nilable(String)) }
      attr_reader :granularity

      sig { params(granularity: String).void }
      attr_writer :granularity

      # Optional machine ID filter.
      sig { returns(T.nilable(String)) }
      attr_reader :machine_id

      sig { params(machine_id: String).void }
      attr_writer :machine_id

      # Last UTC usage date to include (YYYY-MM-DD). Defaults to current time.
      sig { returns(T.nilable(String)) }
      attr_reader :period_end

      sig { params(period_end: String).void }
      attr_writer :period_end

      # Usage period start (YYYY-MM-DD). Defaults to first of current month.
      sig { returns(T.nilable(String)) }
      attr_reader :period_start

      sig { params(period_start: String).void }
      attr_writer :period_start

      sig do
        params(
          granularity: String,
          machine_id: String,
          period_end: String,
          period_start: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            granularity: String,
            machine_id: String,
            period_end: String,
            period_start: String,
            request_options: Dedalus::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
