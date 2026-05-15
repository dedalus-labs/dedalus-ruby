# typed: strong

module Dedalus
  module Models
    module Machines
      class Preview < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::Preview, Dedalus::Internal::AnyHash)
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :machine_id

        sig { returns(Integer) }
        attr_accessor :port

        sig { returns(String) }
        attr_accessor :preview_id

        sig { returns(Dedalus::Machines::Preview::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(Dedalus::Machines::Preview::Visibility::TaggedSymbol) }
        attr_accessor :visibility

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
          returns(T.nilable(Dedalus::Machines::Preview::Protocol::TaggedSymbol))
        end
        attr_reader :protocol

        sig do
          params(protocol: Dedalus::Machines::Preview::Protocol::OrSymbol).void
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
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            created_at: Time,
            machine_id: String,
            port: Integer,
            preview_id: String,
            status: Dedalus::Machines::Preview::Status::OrSymbol,
            visibility: Dedalus::Machines::Preview::Visibility::OrSymbol,
            error_code: String,
            error_message: String,
            expires_at: Time,
            protocol: Dedalus::Machines::Preview::Protocol::OrSymbol,
            ready_at: Time,
            retry_after_ms: Integer,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          machine_id:,
          port:,
          preview_id:,
          status:,
          visibility:,
          error_code: nil,
          error_message: nil,
          expires_at: nil,
          protocol: nil,
          ready_at: nil,
          retry_after_ms: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              machine_id: String,
              port: Integer,
              preview_id: String,
              status: Dedalus::Machines::Preview::Status::TaggedSymbol,
              visibility: Dedalus::Machines::Preview::Visibility::TaggedSymbol,
              error_code: String,
              error_message: String,
              expires_at: Time,
              protocol: Dedalus::Machines::Preview::Protocol::TaggedSymbol,
              ready_at: Time,
              retry_after_ms: Integer,
              url: String
            }
          )
        end
        def to_hash
        end

        module Status
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Dedalus::Machines::Preview::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAKE_IN_PROGRESS =
            T.let(
              :wake_in_progress,
              Dedalus::Machines::Preview::Status::TaggedSymbol
            )
          READY =
            T.let(:ready, Dedalus::Machines::Preview::Status::TaggedSymbol)
          CLOSED =
            T.let(:closed, Dedalus::Machines::Preview::Status::TaggedSymbol)
          EXPIRED =
            T.let(:expired, Dedalus::Machines::Preview::Status::TaggedSymbol)
          FAILED =
            T.let(:failed, Dedalus::Machines::Preview::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Dedalus::Machines::Preview::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Visibility
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dedalus::Machines::Preview::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC =
            T.let(:public, Dedalus::Machines::Preview::Visibility::TaggedSymbol)
          PRIVATE =
            T.let(
              :private,
              Dedalus::Machines::Preview::Visibility::TaggedSymbol
            )
          ORG =
            T.let(:org, Dedalus::Machines::Preview::Visibility::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Dedalus::Machines::Preview::Visibility::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Protocol
          extend Dedalus::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Dedalus::Machines::Preview::Protocol) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HTTP =
            T.let(:http, Dedalus::Machines::Preview::Protocol::TaggedSymbol)
          HTTPS =
            T.let(:https, Dedalus::Machines::Preview::Protocol::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Dedalus::Machines::Preview::Protocol::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
