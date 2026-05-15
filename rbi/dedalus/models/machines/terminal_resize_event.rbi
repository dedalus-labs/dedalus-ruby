# typed: strong

module Dedalus
  module Models
    module Machines
      class TerminalResizeEvent < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalResizeEvent,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :height

        sig { returns(Dedalus::Machines::TerminalResizeEvent::Type::OrSymbol) }
        attr_accessor :type

        sig { returns(Integer) }
        attr_accessor :width

        sig do
          params(
            height: Integer,
            type: Dedalus::Machines::TerminalResizeEvent::Type::OrSymbol,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(height:, type:, width:)
        end

        sig do
          override.returns(
            {
              height: Integer,
              type: Dedalus::Machines::TerminalResizeEvent::Type::OrSymbol,
              width: Integer
            }
          )
        end
        def to_hash
        end

        module Type
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::TerminalResizeEvent::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESIZE =
            T.let(
              :resize,
              Dedalus::Machines::TerminalResizeEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dedalus::Machines::TerminalResizeEvent::Type::TaggedSymbol
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
