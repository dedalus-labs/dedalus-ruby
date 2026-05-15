# typed: strong

module Dedalus
  module Models
    module Machines
      class TerminalCreateParams < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalCreateParams,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :height

        sig { returns(Integer) }
        attr_accessor :width

        sig { returns(T.nilable(String)) }
        attr_reader :cwd

        sig { params(cwd: String).void }
        attr_writer :cwd

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :env

        sig { params(env: T::Hash[Symbol, String]).void }
        attr_writer :env

        sig { returns(T.nilable(String)) }
        attr_reader :shell

        sig { params(shell: String).void }
        attr_writer :shell

        sig do
          params(
            height: Integer,
            width: Integer,
            cwd: String,
            env: T::Hash[Symbol, String],
            shell: String
          ).returns(T.attached_class)
        end
        def self.new(height:, width:, cwd: nil, env: nil, shell: nil)
        end

        sig do
          override.returns(
            {
              height: Integer,
              width: Integer,
              cwd: String,
              env: T::Hash[Symbol, String],
              shell: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
