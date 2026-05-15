# typed: strong

module Dedalus
  module Models
    module Machines
      class ExecutionEvent < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::ExecutionEvent, Dedalus::Internal::AnyHash)
          end

        sig { returns(Time) }
        attr_accessor :at

        sig { returns(Integer) }
        attr_accessor :sequence

        sig { returns(Dedalus::Machines::ExecutionEvent::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :chunk

        sig { params(chunk: String).void }
        attr_writer :chunk

        sig { returns(T.nilable(String)) }
        attr_reader :error_code

        sig { params(error_code: String).void }
        attr_writer :error_code

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig { returns(T.nilable(Integer)) }
        attr_reader :exit_code

        sig { params(exit_code: Integer).void }
        attr_writer :exit_code

        sig { returns(T.nilable(Integer)) }
        attr_reader :signal

        sig { params(signal: Integer).void }
        attr_writer :signal

        sig do
          returns(
            T.nilable(Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Dedalus::Machines::ExecutionEvent::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            at: Time,
            sequence: Integer,
            type: Dedalus::Machines::ExecutionEvent::Type::OrSymbol,
            chunk: String,
            error_code: String,
            error_message: String,
            exit_code: Integer,
            signal: Integer,
            status: Dedalus::Machines::ExecutionEvent::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          at:,
          sequence:,
          type:,
          chunk: nil,
          error_code: nil,
          error_message: nil,
          exit_code: nil,
          signal: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              at: Time,
              sequence: Integer,
              type: Dedalus::Machines::ExecutionEvent::Type::TaggedSymbol,
              chunk: String,
              error_code: String,
              error_message: String,
              exit_code: Integer,
              signal: Integer,
              status: Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::ExecutionEvent::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIFECYCLE =
            T.let(
              :lifecycle,
              Dedalus::Machines::ExecutionEvent::Type::TaggedSymbol
            )
          STDOUT =
            T.let(
              :stdout,
              Dedalus::Machines::ExecutionEvent::Type::TaggedSymbol
            )
          STDERR =
            T.let(
              :stderr,
              Dedalus::Machines::ExecutionEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Dedalus::Machines::ExecutionEvent::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Status
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::ExecutionEvent::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAKE_IN_PROGRESS =
            T.let(
              :wake_in_progress,
              Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            )
          QUEUED =
            T.let(
              :queued,
              Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            )
          RUNNING =
            T.let(
              :running,
              Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            )
          SUCCEEDED =
            T.let(
              :succeeded,
              Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Dedalus::Machines::ExecutionEvent::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
