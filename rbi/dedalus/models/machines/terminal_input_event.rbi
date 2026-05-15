# typed: strong

module Dedalus
  module Models
    module Machines
      class TerminalInputEvent < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalInputEvent,
              Dedalus::Internal::AnyHash
            )
          end

        # Base64-encoded terminal input.
        sig { returns(String) }
        attr_accessor :data

        sig { returns(Dedalus::Machines::TerminalInputEvent::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            data: String,
            type: Dedalus::Machines::TerminalInputEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Base64-encoded terminal input.
          data:,
          type:
        )
        end

        sig do
          override.returns(
            {
              data: String,
              type: Dedalus::Machines::TerminalInputEvent::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::TerminalInputEvent::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INPUT =
            T.let(
              :input,
              Dedalus::Machines::TerminalInputEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dedalus::Machines::TerminalInputEvent::Type::TaggedSymbol
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
