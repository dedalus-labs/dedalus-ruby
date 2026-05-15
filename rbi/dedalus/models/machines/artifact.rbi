# typed: strong

module Dedalus
  module Models
    module Machines
      class Artifact < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::Artifact, Dedalus::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :artifact_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :machine_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :size_bytes

        sig { returns(T.nilable(String)) }
        attr_reader :download_url

        sig { params(download_url: String).void }
        attr_writer :download_url

        sig { returns(T.nilable(String)) }
        attr_reader :execution_id

        sig { params(execution_id: String).void }
        attr_writer :execution_id

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        sig { returns(T.nilable(String)) }
        attr_reader :mime_type

        sig { params(mime_type: String).void }
        attr_writer :mime_type

        sig { returns(T.nilable(String)) }
        attr_reader :sha256

        sig { params(sha256: String).void }
        attr_writer :sha256

        sig do
          params(
            artifact_id: String,
            created_at: Time,
            machine_id: String,
            name: String,
            size_bytes: Integer,
            download_url: String,
            execution_id: String,
            expires_at: Time,
            mime_type: String,
            sha256: String
          ).returns(T.attached_class)
        end
        def self.new(
          artifact_id:,
          created_at:,
          machine_id:,
          name:,
          size_bytes:,
          download_url: nil,
          execution_id: nil,
          expires_at: nil,
          mime_type: nil,
          sha256: nil
        )
        end

        sig do
          override.returns(
            {
              artifact_id: String,
              created_at: Time,
              machine_id: String,
              name: String,
              size_bytes: Integer,
              download_url: String,
              execution_id: String,
              expires_at: Time,
              mime_type: String,
              sha256: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
