# typed: strong

module Dedalus
  module Models
    module Machines
      class ExecutionOutput < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::ExecutionOutput,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :execution_id

        sig { returns(T.nilable(String)) }
        attr_reader :stderr

        sig { params(stderr: String).void }
        attr_writer :stderr

        sig { returns(T.nilable(Integer)) }
        attr_reader :stderr_bytes

        sig { params(stderr_bytes: Integer).void }
        attr_writer :stderr_bytes

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :stderr_truncated

        sig { params(stderr_truncated: T::Boolean).void }
        attr_writer :stderr_truncated

        sig { returns(T.nilable(String)) }
        attr_reader :stdout

        sig { params(stdout: String).void }
        attr_writer :stdout

        sig { returns(T.nilable(Integer)) }
        attr_reader :stdout_bytes

        sig { params(stdout_bytes: Integer).void }
        attr_writer :stdout_bytes

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :stdout_truncated

        sig { params(stdout_truncated: T::Boolean).void }
        attr_writer :stdout_truncated

        sig do
          params(
            execution_id: String,
            stderr: String,
            stderr_bytes: Integer,
            stderr_truncated: T::Boolean,
            stdout: String,
            stdout_bytes: Integer,
            stdout_truncated: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          execution_id:,
          stderr: nil,
          stderr_bytes: nil,
          stderr_truncated: nil,
          stdout: nil,
          stdout_bytes: nil,
          stdout_truncated: nil
        )
        end

        sig do
          override.returns(
            {
              execution_id: String,
              stderr: String,
              stderr_bytes: Integer,
              stderr_truncated: T::Boolean,
              stdout: String,
              stdout_bytes: Integer,
              stdout_truncated: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
