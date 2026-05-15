# typed: strong

module Dedalus
  module Resources
    class Machines
      class Artifacts
        # Get artifact
        sig do
          params(
            machine_id: String,
            artifact_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Artifact)
        end
        def retrieve(machine_id:, artifact_id:, request_options: {})
        end

        # List artifacts
        sig do
          params(
            machine_id: String,
            cursor: String,
            limit: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Internal::CursorPage[Dedalus::Machines::Artifact])
        end
        def list(
          # Path param
          machine_id:,
          # Query param
          cursor: nil,
          # Query param
          limit: nil,
          request_options: {}
        )
        end

        # Delete artifact
        sig do
          params(
            machine_id: String,
            artifact_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Artifact)
        end
        def delete(machine_id:, artifact_id:, request_options: {})
        end

        # @api private
        sig { params(client: Dedalus::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
