# typed: strong

module Dedalus
  module Models
    module Machines
      class ExecutionCreateParams < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::ExecutionCreateParams,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :command

        sig { returns(T.nilable(String)) }
        attr_reader :cwd

        sig { params(cwd: String).void }
        attr_writer :cwd

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :env

        sig { params(env: T::Hash[Symbol, String]).void }
        attr_writer :env

        sig { returns(T.nilable(String)) }
        attr_reader :stdin

        sig { params(stdin: String).void }
        attr_writer :stdin

        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_ms

        sig { params(timeout_ms: Integer).void }
        attr_writer :timeout_ms

        sig do
          params(
            command: T.nilable(T::Array[String]),
            cwd: String,
            env: T::Hash[Symbol, String],
            stdin: String,
            timeout_ms: Integer
          ).returns(T.attached_class)
        end
        def self.new(command:, cwd: nil, env: nil, stdin: nil, timeout_ms: nil)
        end

        sig do
          override.returns(
            {
              command: T.nilable(T::Array[String]),
              cwd: String,
              env: T::Hash[Symbol, String],
              stdin: String,
              timeout_ms: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
