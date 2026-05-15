# typed: strong

module Dedalus
  module Models
    module Machines
      class ExecutionEvents < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::ExecutionEvents,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Dedalus::Machines::ExecutionEvent])) }
        attr_accessor :items

        sig { returns(T.nilable(String)) }
        attr_reader :next_cursor

        sig { params(next_cursor: String).void }
        attr_writer :next_cursor

        sig do
          params(
            items:
              T.nilable(T::Array[Dedalus::Machines::ExecutionEvent::OrHash]),
            next_cursor: String
          ).returns(T.attached_class)
        end
        def self.new(items:, next_cursor: nil)
        end

        sig do
          override.returns(
            {
              items: T.nilable(T::Array[Dedalus::Machines::ExecutionEvent]),
              next_cursor: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
