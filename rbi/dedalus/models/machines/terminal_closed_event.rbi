# typed: strong

module Dedalus
  module Models
    module Machines
      class TerminalClosedEvent < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalClosedEvent,
              Dedalus::Internal::AnyHash
            )
          end

        sig do
          returns(Dedalus::Machines::TerminalClosedEvent::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            type: Dedalus::Machines::TerminalClosedEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:)
        end

        sig do
          override.returns(
            { type: Dedalus::Machines::TerminalClosedEvent::Type::TaggedSymbol }
          )
        end
        def to_hash
        end

        module Type
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::TerminalClosedEvent::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLOSED =
            T.let(
              :closed,
              Dedalus::Machines::TerminalClosedEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dedalus::Machines::TerminalClosedEvent::Type::TaggedSymbol
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
