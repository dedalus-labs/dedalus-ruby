# typed: strong

module Dedalus
  module Models
    module Machines
      class ExecutionList < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::ExecutionList, Dedalus::Internal::AnyHash)
          end

        sig { returns(T.nilable(T::Array[Dedalus::Machines::Execution])) }
        attr_accessor :items

        sig { returns(T.nilable(String)) }
        attr_reader :next_cursor

        sig { params(next_cursor: String).void }
        attr_writer :next_cursor

        sig do
          params(
            items: T.nilable(T::Array[Dedalus::Machines::Execution::OrHash]),
            next_cursor: String
          ).returns(T.attached_class)
        end
        def self.new(items:, next_cursor: nil)
        end

        sig do
          override.returns(
            {
              items: T.nilable(T::Array[Dedalus::Machines::Execution]),
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
