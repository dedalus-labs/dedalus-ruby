# typed: strong

module Dedalus
  module Models
    class MachineCreateParams < Dedalus::Models::CreateParams
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dedalus::MachineCreateParams, Dedalus::Internal::AnyHash)
        end

      sig do
        params(request_options: Dedalus::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Dedalus::RequestOptions }) }
      def to_hash
      end
    end
  end
end
