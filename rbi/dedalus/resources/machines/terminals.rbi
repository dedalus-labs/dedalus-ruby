# typed: strong

module Dedalus
  module Resources
    class Machines
      class Terminals
        # Create terminal
        sig do
          params(
            machine_id: String,
            height: Integer,
            width: Integer,
            cwd: String,
            env: T::Hash[Symbol, String],
            shell: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Terminal)
        end
        def create(
          # Path param
          machine_id:,
          # Body param
          height:,
          # Body param
          width:,
          # Body param
          cwd: nil,
          # Body param
          env: nil,
          # Body param
          shell: nil,
          request_options: {}
        )
        end

        # Get terminal
        sig do
          params(
            machine_id: String,
            terminal_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Terminal)
        end
        def retrieve(machine_id:, terminal_id:, request_options: {})
        end

        # List terminals
        sig do
          params(
            machine_id: String,
            cursor: String,
            limit: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Internal::CursorPage[Dedalus::Machines::Terminal])
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

        # Delete terminal
        sig do
          params(
            machine_id: String,
            terminal_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Terminal)
        end
        def delete(machine_id:, terminal_id:, request_options: {})
        end

        # @api private
        sig { params(client: Dedalus::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
