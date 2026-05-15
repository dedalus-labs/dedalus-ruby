# typed: strong

module Dedalus
  module Models
    module Machines
      class TerminalErrorEvent < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalErrorEvent,
              Dedalus::Internal::AnyHash
            )
          end

        sig do
          returns(Dedalus::Machines::TerminalErrorEvent::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :error_code

        sig { params(error_code: String).void }
        attr_writer :error_code

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig do
          params(
            type: Dedalus::Machines::TerminalErrorEvent::Type::OrSymbol,
            error_code: String,
            error_message: String
          ).returns(T.attached_class)
        end
        def self.new(type:, error_code: nil, error_message: nil)
        end

        sig do
          override.returns(
            {
              type: Dedalus::Machines::TerminalErrorEvent::Type::TaggedSymbol,
              error_code: String,
              error_message: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::TerminalErrorEvent::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ERROR =
            T.let(
              :error,
              Dedalus::Machines::TerminalErrorEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dedalus::Machines::TerminalErrorEvent::Type::TaggedSymbol
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
