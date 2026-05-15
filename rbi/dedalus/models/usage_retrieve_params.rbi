# typed: strong

module Dedalus
  module Models
    class UsageRetrieveParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dedalus::UsageRetrieveParams, Dedalus::Internal::AnyHash)
        end

      # Billing period start (YYYY-MM-DD). Defaults to first of current month.
      sig { returns(T.nilable(String)) }
      attr_reader :period_start

      sig { params(period_start: String).void }
      attr_writer :period_start

      sig do
        params(
          period_start: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Billing period start (YYYY-MM-DD). Defaults to first of current month.
        period_start: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { period_start: String, request_options: Dedalus::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
