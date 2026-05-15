# typed: strong

module Dedalus
  module Models
    module Machines
      class SSHSession < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::SSHSession, Dedalus::Internal::AnyHash)
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :machine_id

        sig { returns(String) }
        attr_accessor :session_id

        sig { returns(Dedalus::Machines::SSHSession::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(T.nilable(Dedalus::Machines::SSHConnection)) }
        attr_reader :connection

        sig do
          params(connection: Dedalus::Machines::SSHConnection::OrHash).void
        end
        attr_writer :connection

        sig { returns(T.nilable(String)) }
        attr_reader :error_code

        sig { params(error_code: String).void }
        attr_writer :error_code

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        sig { returns(T.nilable(Time)) }
        attr_reader :ready_at

        sig { params(ready_at: Time).void }
        attr_writer :ready_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :retry_after_ms

        sig { params(retry_after_ms: Integer).void }
        attr_writer :retry_after_ms

        sig do
          params(
            created_at: Time,
            machine_id: String,
            session_id: String,
            status: Dedalus::Machines::SSHSession::Status::OrSymbol,
            connection: Dedalus::Machines::SSHConnection::OrHash,
            error_code: String,
            error_message: String,
            expires_at: Time,
            ready_at: Time,
            retry_after_ms: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          machine_id:,
          session_id:,
          status:,
          connection: nil,
          error_code: nil,
          error_message: nil,
          expires_at: nil,
          ready_at: nil,
          retry_after_ms: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              machine_id: String,
              session_id: String,
              status: Dedalus::Machines::SSHSession::Status::TaggedSymbol,
              connection: Dedalus::Machines::SSHConnection,
              error_code: String,
              error_message: String,
              expires_at: Time,
              ready_at: Time,
              retry_after_ms: Integer
            }
          )
        end
        def to_hash
        end

        module Status
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::SSHSession::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAKE_IN_PROGRESS =
            T.let(
              :wake_in_progress,
              Dedalus::Machines::SSHSession::Status::TaggedSymbol
            )
          READY =
            T.let(:ready, Dedalus::Machines::SSHSession::Status::TaggedSymbol)
          CLOSED =
            T.let(:closed, Dedalus::Machines::SSHSession::Status::TaggedSymbol)
          EXPIRED =
            T.let(:expired, Dedalus::Machines::SSHSession::Status::TaggedSymbol)
          FAILED =
            T.let(:failed, Dedalus::Machines::SSHSession::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Dedalus::Machines::SSHSession::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
