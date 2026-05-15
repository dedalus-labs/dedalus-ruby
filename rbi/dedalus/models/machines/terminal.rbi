# typed: strong

module Dedalus
  module Models
    module Machines
      class Terminal < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::Terminal, Dedalus::Internal::AnyHash)
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Integer) }
        attr_accessor :height

        sig { returns(String) }
        attr_accessor :machine_id

        sig { returns(Dedalus::Machines::Terminal::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(String) }
        attr_accessor :terminal_id

        sig { returns(Integer) }
        attr_accessor :width

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

        sig do
          returns(
            T.nilable(Dedalus::Machines::Terminal::Protocol::TaggedSymbol)
          )
        end
        attr_reader :protocol

        sig do
          params(protocol: Dedalus::Machines::Terminal::Protocol::OrSymbol).void
        end
        attr_writer :protocol

        sig { returns(T.nilable(Time)) }
        attr_reader :ready_at

        sig { params(ready_at: Time).void }
        attr_writer :ready_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :retry_after_ms

        sig { params(retry_after_ms: Integer).void }
        attr_writer :retry_after_ms

        sig { returns(T.nilable(String)) }
        attr_reader :stream_url

        sig { params(stream_url: String).void }
        attr_writer :stream_url

        sig do
          params(
            created_at: Time,
            height: Integer,
            machine_id: String,
            status: Dedalus::Machines::Terminal::Status::OrSymbol,
            terminal_id: String,
            width: Integer,
            error_code: String,
            error_message: String,
            expires_at: Time,
            protocol: Dedalus::Machines::Terminal::Protocol::OrSymbol,
            ready_at: Time,
            retry_after_ms: Integer,
            stream_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          height:,
          machine_id:,
          status:,
          terminal_id:,
          width:,
          error_code: nil,
          error_message: nil,
          expires_at: nil,
          protocol: nil,
          ready_at: nil,
          retry_after_ms: nil,
          stream_url: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              height: Integer,
              machine_id: String,
              status: Dedalus::Machines::Terminal::Status::TaggedSymbol,
              terminal_id: String,
              width: Integer,
              error_code: String,
              error_message: String,
              expires_at: Time,
              protocol: Dedalus::Machines::Terminal::Protocol::TaggedSymbol,
              ready_at: Time,
              retry_after_ms: Integer,
              stream_url: String
            }
          )
        end
        def to_hash
        end

        module Status
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Dedalus::Machines::Terminal::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAKE_IN_PROGRESS =
            T.let(
              :wake_in_progress,
              Dedalus::Machines::Terminal::Status::TaggedSymbol
            )
          READY =
            T.let(:ready, Dedalus::Machines::Terminal::Status::TaggedSymbol)
          CLOSED =
            T.let(:closed, Dedalus::Machines::Terminal::Status::TaggedSymbol)
          EXPIRED =
            T.let(:expired, Dedalus::Machines::Terminal::Status::TaggedSymbol)
          FAILED =
            T.let(:failed, Dedalus::Machines::Terminal::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Dedalus::Machines::Terminal::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Protocol
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::Terminal::Protocol)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBSOCKET =
            T.let(
              :websocket,
              Dedalus::Machines::Terminal::Protocol::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Dedalus::Machines::Terminal::Protocol::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
