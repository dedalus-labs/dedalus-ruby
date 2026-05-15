# typed: strong

module Dedalus
  module Models
    module Machines
      class Execution < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::Execution, Dedalus::Internal::AnyHash)
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :command

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :execution_id

        sig { returns(String) }
        attr_accessor :machine_id

        sig { returns(Dedalus::Machines::Execution::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(T.nilable(T::Array[Dedalus::Machines::ArtifactRef])) }
        attr_accessor :artifacts

        sig { returns(T.nilable(Time)) }
        attr_reader :completed_at

        sig { params(completed_at: Time).void }
        attr_writer :completed_at

        sig { returns(T.nilable(String)) }
        attr_reader :cwd

        sig { params(cwd: String).void }
        attr_writer :cwd

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :env_keys

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

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :retry_after_ms

        sig { params(retry_after_ms: Integer).void }
        attr_writer :retry_after_ms

        sig { returns(T.nilable(Integer)) }
        attr_reader :signal

        sig { params(signal: Integer).void }
        attr_writer :signal

        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :stderr_bytes

        sig { params(stderr_bytes: Integer).void }
        attr_writer :stderr_bytes

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :stderr_truncated

        sig { params(stderr_truncated: T::Boolean).void }
        attr_writer :stderr_truncated

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
            command: T.nilable(T::Array[String]),
            created_at: Time,
            execution_id: String,
            machine_id: String,
            status: Dedalus::Machines::Execution::Status::OrSymbol,
            artifacts:
              T.nilable(T::Array[Dedalus::Machines::ArtifactRef::OrHash]),
            completed_at: Time,
            cwd: String,
            env_keys: T.nilable(T::Array[String]),
            error_code: String,
            error_message: String,
            exit_code: Integer,
            expires_at: Time,
            retry_after_ms: Integer,
            signal: Integer,
            started_at: Time,
            stderr_bytes: Integer,
            stderr_truncated: T::Boolean,
            stdout_bytes: Integer,
            stdout_truncated: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          command:,
          created_at:,
          execution_id:,
          machine_id:,
          status:,
          artifacts: nil,
          completed_at: nil,
          cwd: nil,
          env_keys: nil,
          error_code: nil,
          error_message: nil,
          exit_code: nil,
          expires_at: nil,
          retry_after_ms: nil,
          signal: nil,
          started_at: nil,
          stderr_bytes: nil,
          stderr_truncated: nil,
          stdout_bytes: nil,
          stdout_truncated: nil
        )
        end

        sig do
          override.returns(
            {
              command: T.nilable(T::Array[String]),
              created_at: Time,
              execution_id: String,
              machine_id: String,
              status: Dedalus::Machines::Execution::Status::TaggedSymbol,
              artifacts: T.nilable(T::Array[Dedalus::Machines::ArtifactRef]),
              completed_at: Time,
              cwd: String,
              env_keys: T.nilable(T::Array[String]),
              error_code: String,
              error_message: String,
              exit_code: Integer,
              expires_at: Time,
              retry_after_ms: Integer,
              signal: Integer,
              started_at: Time,
              stderr_bytes: Integer,
              stderr_truncated: T::Boolean,
              stdout_bytes: Integer,
              stdout_truncated: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Status
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Dedalus::Machines::Execution::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAKE_IN_PROGRESS =
            T.let(
              :wake_in_progress,
              Dedalus::Machines::Execution::Status::TaggedSymbol
            )
          QUEUED =
            T.let(:queued, Dedalus::Machines::Execution::Status::TaggedSymbol)
          RUNNING =
            T.let(:running, Dedalus::Machines::Execution::Status::TaggedSymbol)
          SUCCEEDED =
            T.let(
              :succeeded,
              Dedalus::Machines::Execution::Status::TaggedSymbol
            )
          FAILED =
            T.let(:failed, Dedalus::Machines::Execution::Status::TaggedSymbol)
          CANCELLED =
            T.let(
              :cancelled,
              Dedalus::Machines::Execution::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(:expired, Dedalus::Machines::Execution::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Dedalus::Machines::Execution::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
