# typed: strong

module Dedalus
  module Models
    class UsageMachineStorageParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dedalus::UsageMachineStorageParams, Dedalus::Internal::AnyHash)
        end

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
          machine_id: String,
          period_end: String,
          period_start: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
