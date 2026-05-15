# frozen_string_literal: true

module Dedalus
  module Resources
    class Machines
      class Terminals
        # Create terminal
        #
        # @overload create(machine_id:, height:, width:, cwd: nil, env: nil, shell: nil, request_options: {})
        #
        # @param machine_id [String] Path param
        #
        # @param height [Integer] Body param
        #
        # @param width [Integer] Body param
        #
        # @param cwd [String] Body param
        #
        # @param env [Hash{Symbol=>String}] Body param
        #
        # @param shell [String] Body param
        #
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Terminal]
        #
        # @see Dedalus::Models::Machines::TerminalCreateParams
        def create(params)
          parsed, options = Dedalus::Machines::TerminalCreateParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/machines/%1$s/terminals", machine_id],
            body: parsed,
            model: Dedalus::Machines::Terminal,
            options: options
          )
        end

        # Get terminal
        #
        # @overload retrieve(machine_id:, terminal_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param terminal_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Terminal]
        #
        # @see Dedalus::Models::Machines::TerminalRetrieveParams
        def retrieve(params)
          parsed, options = Dedalus::Machines::TerminalRetrieveParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          terminal_id =
            parsed.delete(:terminal_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/terminals/%2$s", machine_id, terminal_id],
            model: Dedalus::Machines::Terminal,
            options: options
          )
        end

        # List terminals
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
        # @return [Dedalus::Internal::CursorPage<Dedalus::Models::Machines::Terminal>]
        #
        # @see Dedalus::Models::Machines::TerminalListParams
        def list(params)
          parsed, options = Dedalus::Machines::TerminalListParams.dump_request(params)
          query = Dedalus::Internal::Util.encode_query_params(parsed)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/terminals", machine_id],
            query: query,
            page: Dedalus::Internal::CursorPage,
            model: Dedalus::Machines::Terminal,
            options: options
          )
        end

        # Delete terminal
        #
        # @overload delete(machine_id:, terminal_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param terminal_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Terminal]
        #
        # @see Dedalus::Models::Machines::TerminalDeleteParams
        def delete(params)
          parsed, options = Dedalus::Machines::TerminalDeleteParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          terminal_id =
            parsed.delete(:terminal_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/machines/%1$s/terminals/%2$s", machine_id, terminal_id],
            model: Dedalus::Machines::Terminal,
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
