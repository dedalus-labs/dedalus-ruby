# typed: strong

module Dedalus
  module Models
    module Machines
      class SSHHostTrust < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::SSHHostTrust, Dedalus::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :host_pattern

        sig { returns(Dedalus::Machines::SSHHostTrust::Kind::TaggedSymbol) }
        attr_accessor :kind

        sig { returns(String) }
        attr_accessor :public_key

        sig do
          params(
            host_pattern: String,
            kind: Dedalus::Machines::SSHHostTrust::Kind::OrSymbol,
            public_key: String
          ).returns(T.attached_class)
        end
        def self.new(host_pattern:, kind:, public_key:)
        end

        sig do
          override.returns(
            {
              host_pattern: String,
              kind: Dedalus::Machines::SSHHostTrust::Kind::TaggedSymbol,
              public_key: String
            }
          )
        end
        def to_hash
        end

        module Kind
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::SSHHostTrust::Kind)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CERT_AUTHORITY =
            T.let(
              :cert_authority,
              Dedalus::Machines::SSHHostTrust::Kind::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Dedalus::Machines::SSHHostTrust::Kind::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
