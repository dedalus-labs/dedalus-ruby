# typed: strong

module Dedalus
  module Models
    class MachineWatchParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dedalus::MachineWatchParams, Dedalus::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :machine_id

      sig { returns(T.nilable(String)) }
      attr_reader :last_event_id

      sig { params(last_event_id: String).void }
      attr_writer :last_event_id

      sig do
        params(
          machine_id: String,
          last_event_id: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(machine_id:, last_event_id: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            machine_id: String,
            last_event_id: String,
            request_options: Dedalus::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
