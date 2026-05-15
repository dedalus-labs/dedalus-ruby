# typed: strong

module Dedalus
  module Resources
    class Machines
      class SSH
        # Create SSH session
        sig do
          params(
            machine_id: String,
            public_key: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::SSHSession)
        end
        def create(
          # Path param
          machine_id:,
          # Body param
          public_key:,
          request_options: {}
        )
        end

        # Get SSH session
        sig do
          params(
            machine_id: String,
            session_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::SSHSession)
        end
        def retrieve(machine_id:, session_id:, request_options: {})
        end

        # List SSH sessions
        sig do
          params(
            machine_id: String,
            cursor: String,
            limit: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(
            Dedalus::Internal::CursorPage[Dedalus::Machines::SSHSession]
          )
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

        # Delete SSH session
        sig do
          params(
            machine_id: String,
            session_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::SSHSession)
        end
        def delete(machine_id:, session_id:, request_options: {})
        end

        # @api private
        sig { params(client: Dedalus::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
