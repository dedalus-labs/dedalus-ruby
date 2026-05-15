# typed: strong

module Dedalus
  module Resources
    class Machines
      sig { returns(Dedalus::Resources::Machines::Artifacts) }
      attr_reader :artifacts

      sig { returns(Dedalus::Resources::Machines::Previews) }
      attr_reader :previews

      sig { returns(Dedalus::Resources::Machines::SSH) }
      attr_reader :ssh

      sig { returns(Dedalus::Resources::Machines::Executions) }
      attr_reader :executions

      sig { returns(Dedalus::Resources::Machines::Terminals) }
      attr_reader :terminals

      # Create machine
      sig do
        params(
          memory_mib: Integer,
          storage_gib: Integer,
          vcpu: Float,
          autosleep: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Machine)
      end
      def create(
        # Memory in MiB.
        memory_mib:,
        # Storage in GiB.
        storage_gib:,
        # CPU in vCPUs.
        vcpu:,
        # Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h,
        # 7d3h4s, or 1w3d, raw seconds ("1800"), or never to disable.
        autosleep: nil,
        request_options: {}
      )
      end

      # Get machine
      sig do
        params(
          machine_id: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Machine)
      end
      def retrieve(machine_id:, request_options: {})
      end

      # Update machine
      sig do
        params(
          machine_id: String,
          autosleep: String,
          memory_mib: Integer,
          storage_gib: Integer,
          vcpu: Float,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Machine)
      end
      def update(
        # Path param
        machine_id:,
        # Body param: Idle window before autosleep. Accepts fixed duration units like 30s,
        # 30m, 2h, 7d3h4s, or 1w3d, raw seconds ("1800"), or never to disable.
        autosleep: nil,
        # Body param: Memory in MiB.
        memory_mib: nil,
        # Body param: Storage in GiB.
        storage_gib: nil,
        # Body param: CPU in vCPUs.
        vcpu: nil,
        request_options: {}
      )
      end

      # List machines
      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Internal::CursorPage[Dedalus::MachineListItem])
      end
      def list(cursor: nil, limit: nil, request_options: {})
      end

      # Destroy machine
      sig do
        params(
          machine_id: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Machine)
      end
      def delete(machine_id:, request_options: {})
      end

      # Sleep a running machine
      sig do
        params(
          machine_id: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Machine)
      end
      def sleep_(machine_id:, request_options: {})
      end

      # Wake a sleeping machine
      sig do
        params(
          machine_id: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Machine)
      end
      def wake(machine_id:, request_options: {})
      end

      # Streams machine lifecycle updates over Server-Sent Events. Each `status` event
      # contains a full `LifecycleResponse` payload. The stream closes after the machine
      # reaches its current desired state.
      sig do
        params(
          machine_id: String,
          last_event_id: String,
          request_options: Dedalus::RequestOptions::OrHash
        ).returns(Dedalus::Internal::Stream[Dedalus::Machine])
      end
      def watch_streaming(
        # Path param: Machine identifier.
        machine_id:,
        # Header param: Optional resourceVersion bookmark used to resume a previous
        # stream.
        last_event_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dedalus::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
