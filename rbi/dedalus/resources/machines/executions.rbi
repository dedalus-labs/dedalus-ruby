# typed: strong

module Dedalus
  module Resources
    class Machines
      class Executions
        # Create execution
        sig do
          params(
            machine_id: String,
            command: T.nilable(T::Array[String]),
            cwd: String,
            env: T::Hash[Symbol, String],
            stdin: String,
            timeout_ms: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Execution)
        end
        def create(
          # Path param
          machine_id:,
          # Body param
          command:,
          # Body param
          cwd: nil,
          # Body param
          env: nil,
          # Body param
          stdin: nil,
          # Body param
          timeout_ms: nil,
          request_options: {}
        )
        end

        # Get execution
        sig do
          params(
            machine_id: String,
            execution_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Execution)
        end
        def retrieve(machine_id:, execution_id:, request_options: {})
        end

        # List executions
        sig do
          params(
            machine_id: String,
            cursor: String,
            limit: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Internal::CursorPage[Dedalus::Machines::Execution])
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

        # Delete execution
        sig do
          params(
            machine_id: String,
            execution_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Execution)
        end
        def delete(machine_id:, execution_id:, request_options: {})
        end

        # List execution events
        sig do
          params(
            machine_id: String,
            execution_id: String,
            cursor: String,
            limit: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(
            Dedalus::Internal::CursorPage[Dedalus::Machines::ExecutionEvent]
          )
        end
        def events(
          # Path param
          machine_id:,
          # Path param
          execution_id:,
          # Query param
          cursor: nil,
          # Query param
          limit: nil,
          request_options: {}
        )
        end

        # Get execution output
        sig do
          params(
            machine_id: String,
            execution_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::ExecutionOutput)
        end
        def output(machine_id:, execution_id:, request_options: {})
        end

        # @api private
        sig { params(client: Dedalus::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
