# typed: strong

module Dedalus
  module Models
    module Machines
      class PreviewCreateParams < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::PreviewCreateParams,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :port

        sig do
          returns(
            T.nilable(
              Dedalus::Machines::PreviewCreateParams::Protocol::OrSymbol
            )
          )
        end
        attr_reader :protocol

        sig do
          params(
            protocol: Dedalus::Machines::PreviewCreateParams::Protocol::OrSymbol
          ).void
        end
        attr_writer :protocol

        sig do
          returns(
            T.nilable(
              Dedalus::Machines::PreviewCreateParams::Visibility::OrSymbol
            )
          )
        end
        attr_reader :visibility

        sig do
          params(
            visibility:
              Dedalus::Machines::PreviewCreateParams::Visibility::OrSymbol
          ).void
        end
        attr_writer :visibility

        sig do
          params(
            port: Integer,
            protocol:
              Dedalus::Machines::PreviewCreateParams::Protocol::OrSymbol,
            visibility:
              Dedalus::Machines::PreviewCreateParams::Visibility::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(port:, protocol: nil, visibility: nil)
        end

        sig do
          override.returns(
            {
              port: Integer,
              protocol:
                Dedalus::Machines::PreviewCreateParams::Protocol::OrSymbol,
              visibility:
                Dedalus::Machines::PreviewCreateParams::Visibility::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Protocol
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::PreviewCreateParams::Protocol)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HTTP =
            T.let(
              :http,
              Dedalus::Machines::PreviewCreateParams::Protocol::TaggedSymbol
            )
          HTTPS =
            T.let(
              :https,
              Dedalus::Machines::PreviewCreateParams::Protocol::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dedalus::Machines::PreviewCreateParams::Protocol::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Visibility
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::PreviewCreateParams::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC =
            T.let(
              :public,
              Dedalus::Machines::PreviewCreateParams::Visibility::TaggedSymbol
            )
          PRIVATE =
            T.let(
              :private,
              Dedalus::Machines::PreviewCreateParams::Visibility::TaggedSymbol
            )
          ORG =
            T.let(
              :org,
              Dedalus::Machines::PreviewCreateParams::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dedalus::Machines::PreviewCreateParams::Visibility::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
