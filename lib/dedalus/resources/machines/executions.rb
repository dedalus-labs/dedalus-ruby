# frozen_string_literal: true

module Dedalus
  module Resources
    class Machines
      class Executions
        # Create execution
        #
        # @overload create(machine_id:, command:, cwd: nil, env: nil, stdin: nil, timeout_ms: nil, request_options: {})
        #
        # @param machine_id [String] Path param
        #
        # @param command [Array<String>, nil] Body param
        #
        # @param cwd [String] Body param
        #
        # @param env [Hash{Symbol=>String}] Body param
        #
        # @param stdin [String] Body param
        #
        # @param timeout_ms [Integer] Body param
        #
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Execution]
        #
        # @see Dedalus::Models::Machines::ExecutionCreateParams
        def create(params)
          parsed, options = Dedalus::Machines::ExecutionCreateParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/machines/%1$s/executions", machine_id],
            body: parsed,
            model: Dedalus::Machines::Execution,
            options: options
          )
        end

        # Get execution
        #
        # @overload retrieve(machine_id:, execution_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param execution_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Execution]
        #
        # @see Dedalus::Models::Machines::ExecutionRetrieveParams
        def retrieve(params)
          parsed, options = Dedalus::Machines::ExecutionRetrieveParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          execution_id =
            parsed.delete(:execution_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/executions/%2$s", machine_id, execution_id],
            model: Dedalus::Machines::Execution,
            options: options
          )
        end

        # List executions
        #
        # @overload list(machine_id:, cursor: nil, limit: nil, request_options: {})
        #
        # @param machine_id [String] Path param
        #
        # @param cursor [String] Query param
        #
        # @param limit [Integer] Query param
        #
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Internal::CursorPage<Dedalus::Models::Machines::Execution>]
        #
        # @see Dedalus::Models::Machines::ExecutionListParams
        def list(params)
          parsed, options = Dedalus::Machines::ExecutionListParams.dump_request(params)
          query = Dedalus::Internal::Util.encode_query_params(parsed)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/executions", machine_id],
            query: query,
            page: Dedalus::Internal::CursorPage,
            model: Dedalus::Machines::Execution,
            options: options
          )
        end

        # Delete execution
        #
        # @overload delete(machine_id:, execution_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param execution_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Execution]
        #
        # @see Dedalus::Models::Machines::ExecutionDeleteParams
        def delete(params)
          parsed, options = Dedalus::Machines::ExecutionDeleteParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          execution_id =
            parsed.delete(:execution_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/machines/%1$s/executions/%2$s", machine_id, execution_id],
            model: Dedalus::Machines::Execution,
            options: options
          )
        end

        # List execution events
        #
        # @overload events(machine_id:, execution_id:, cursor: nil, limit: nil, request_options: {})
        #
        # @param machine_id [String] Path param
        #
        # @param execution_id [String] Path param
        #
        # @param cursor [String] Query param
        #
        # @param limit [Integer] Query param
        #
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Internal::CursorPage<Dedalus::Models::Machines::ExecutionEvent>]
        #
        # @see Dedalus::Models::Machines::ExecutionEventsParams
        def events(params)
          parsed, options = Dedalus::Machines::ExecutionEventsParams.dump_request(params)
          query = Dedalus::Internal::Util.encode_query_params(parsed)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          execution_id =
            parsed.delete(:execution_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/executions/%2$s/events", machine_id, execution_id],
            query: query,
            page: Dedalus::Internal::CursorPage,
            model: Dedalus::Machines::ExecutionEvent,
            options: options
          )
        end

        # Get execution output
        #
        # @overload output(machine_id:, execution_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param execution_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::ExecutionOutput]
        #
        # @see Dedalus::Models::Machines::ExecutionOutputParams
        def output(params)
          parsed, options = Dedalus::Machines::ExecutionOutputParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          execution_id =
            parsed.delete(:execution_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/executions/%2$s/output", machine_id, execution_id],
            model: Dedalus::Machines::ExecutionOutput,
            options: options
          )
        end

        # @api private
        #
        # @param client [Dedalus::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
