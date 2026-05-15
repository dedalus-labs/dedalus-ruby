# typed: strong

module Dedalus
  module Models
    module Machines
      class TerminalOutputEvent < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalOutputEvent,
              Dedalus::Internal::AnyHash
            )
          end

        # Base64-encoded terminal output.
        sig { returns(String) }
        attr_accessor :data

        sig do
          returns(Dedalus::Machines::TerminalOutputEvent::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            data: String,
            type: Dedalus::Machines::TerminalOutputEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Base64-encoded terminal output.
          data:,
          type:
        )
        end

        sig do
          override.returns(
            {
              data: String,
              type: Dedalus::Machines::TerminalOutputEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::TerminalOutputEvent::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OUTPUT =
            T.let(
              :output,
              Dedalus::Machines::TerminalOutputEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dedalus::Machines::TerminalOutputEvent::Type::TaggedSymbol
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
