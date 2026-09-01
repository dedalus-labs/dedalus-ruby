# frozen_string_literal: true

module Dedalus
  module Resources
    class Machines
      # @return [Dedalus::Resources::Machines::SSH]
      attr_reader :ssh

      # @return [Dedalus::Resources::Machines::Executions]
      attr_reader :executions

      # Some parameter documentations has been truncated, see
      # {Dedalus::Models::MachineCreateParams} for more details.
      #
      # Create machine
      #
      # @overload create(autosleep: nil, memory_mib: nil, storage_gib: nil, vcpu: nil, request_options: {})
      #
      # @param autosleep [String] Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h, 7d
      #
      # @param memory_mib [Integer] Memory in MiB.
      #
      # @param storage_gib [Integer] Storage in GiB.
      #
      # @param vcpu [Float] CPU in vCPUs.
      #
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::Machine]
      #
      # @see Dedalus::Models::MachineCreateParams
      def create(params = {})
        parsed, options = Dedalus::MachineCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/machines",
          body: parsed,
          model: Dedalus::Machine,
          options: options
        )
      end

      # Get machine
      #
      # @overload retrieve(machine_id:, request_options: {})
      #
      # @param machine_id [String]
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::MachineRetrieveResponse]
      #
      # @see Dedalus::Models::MachineRetrieveParams
      def retrieve(params)
        parsed, options = Dedalus::MachineRetrieveParams.dump_request(params)
        machine_id =
          parsed.delete(:machine_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/machines/%1$s", machine_id],
          model: Dedalus::Models::MachineRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dedalus::Models::MachineUpdateParams} for more details.
      #
      # Update machine
      #
      # @overload update(machine_id:, autosleep: nil, memory_mib: nil, storage_gib: nil, vcpu: nil, request_options: {})
      #
      # @param machine_id [String] Path param
      #
      # @param autosleep [String] Body param: Idle window before autosleep. Accepts fixed duration units like 30s,
      #
      # @param memory_mib [Integer] Body param: Memory in MiB.
      #
      # @param storage_gib [Integer] Body param: Storage in GiB.
      #
      # @param vcpu [Float] Body param: CPU in vCPUs.
      #
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::Machine]
      #
      # @see Dedalus::Models::MachineUpdateParams
      def update(params)
        parsed, options = Dedalus::MachineUpdateParams.dump_request(params)
        machine_id =
          parsed.delete(:machine_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["v1/machines/%1$s", machine_id],
          body: parsed,
          model: Dedalus::Machine,
          options: options
        )
      end

      # List machines
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Internal::CursorPage<Dedalus::Models::MachineListItem>]
      #
      # @see Dedalus::Models::MachineListParams
      def list(params = {})
        parsed, options = Dedalus::MachineListParams.dump_request(params)
        query = Dedalus::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/machines",
          query: query,
          page: Dedalus::Internal::CursorPage,
          model: Dedalus::MachineListItem,
          options: options
        )
      end

      # Destroy machine
      #
      # @overload delete(machine_id:, request_options: {})
      #
      # @param machine_id [String]
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::Machine]
      #
      # @see Dedalus::Models::MachineDeleteParams
      def delete(params)
        parsed, options = Dedalus::MachineDeleteParams.dump_request(params)
        machine_id =
          parsed.delete(:machine_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["v1/machines/%1$s", machine_id],
          model: Dedalus::Machine,
          options: options
        )
      end

      # Sleep a running machine
      #
      # @overload sleep_(machine_id:, request_options: {})
      #
      # @param machine_id [String]
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::Machine]
      #
      # @see Dedalus::Models::MachineSleepParams
      def sleep_(params)
        parsed, options = Dedalus::MachineSleepParams.dump_request(params)
        machine_id =
          parsed.delete(:machine_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["v1/machines/%1$s/sleep", machine_id],
          model: Dedalus::Machine,
          options: options
        )
      end

      # Wake a sleeping machine
      #
      # @overload wake(machine_id:, request_options: {})
      #
      # @param machine_id [String]
      # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dedalus::Models::Machine]
      #
      # @see Dedalus::Models::MachineWakeParams
      def wake(params)
        parsed, options = Dedalus::MachineWakeParams.dump_request(params)
        machine_id =
          parsed.delete(:machine_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["v1/machines/%1$s/wake", machine_id],
          model: Dedalus::Machine,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dedalus::Client]
      def initialize(client:)
        @client = client
        @ssh = Dedalus::Resources::Machines::SSH.new(client: client)
        @executions = Dedalus::Resources::Machines::Executions.new(client: client)
      end
    end
  end
end
