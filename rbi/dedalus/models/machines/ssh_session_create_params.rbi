# typed: strong

module Dedalus
  module Models
    module Machines
      class SSHSessionCreateParams < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::SSHSessionCreateParams,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :public_key

        sig { params(public_key: String).returns(T.attached_class) }
        def self.new(public_key:)
        end

        sig { override.returns({ public_key: String }) }
        def to_hash
        end
      end
    end
  end
end
