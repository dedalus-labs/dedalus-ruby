# frozen_string_literal: true

module Dedalus
  module Resources
    class Machines
      class SSH
        # Create SSH session
        #
        # @overload create(machine_id:, public_key:, request_options: {})
        #
        # @param machine_id [String] Path param
        #
        # @param public_key [String] Body param
        #
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::SSHSession]
        #
        # @see Dedalus::Models::Machines::SSHCreateParams
        def create(params)
          parsed, options = Dedalus::Machines::SSHCreateParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/machines/%1$s/ssh", machine_id],
            body: parsed,
            model: Dedalus::Machines::SSHSession,
            options: options
          )
        end

        # Get SSH session
        #
        # @overload retrieve(machine_id:, session_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param session_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::SSHSession]
        #
        # @see Dedalus::Models::Machines::SSHRetrieveParams
        def retrieve(params)
          parsed, options = Dedalus::Machines::SSHRetrieveParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          session_id =
            parsed.delete(:session_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/ssh/%2$s", machine_id, session_id],
            model: Dedalus::Machines::SSHSession,
            options: options
          )
        end

        # List SSH sessions
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
        # @return [Dedalus::Internal::CursorPage<Dedalus::Models::Machines::SSHSession>]
        #
        # @see Dedalus::Models::Machines::SSHListParams
        def list(params)
          parsed, options = Dedalus::Machines::SSHListParams.dump_request(params)
          query = Dedalus::Internal::Util.encode_query_params(parsed)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/ssh", machine_id],
            query: query,
            page: Dedalus::Internal::CursorPage,
            model: Dedalus::Machines::SSHSession,
            options: options
          )
        end

        # Delete SSH session
        #
        # @overload delete(machine_id:, session_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param session_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::SSHSession]
        #
        # @see Dedalus::Models::Machines::SSHDeleteParams
        def delete(params)
          parsed, options = Dedalus::Machines::SSHDeleteParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          session_id =
            parsed.delete(:session_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/machines/%1$s/ssh/%2$s", machine_id, session_id],
            model: Dedalus::Machines::SSHSession,
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
