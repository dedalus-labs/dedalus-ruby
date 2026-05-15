# frozen_string_literal: true

module Dedalus
  module Resources
    class Machines
      class Previews
        # Create preview
        #
        # @overload create(machine_id:, port:, protocol: nil, visibility: nil, request_options: {})
        #
        # @param machine_id [String] Path param
        #
        # @param port [Integer] Body param
        #
        # @param protocol [Symbol, Dedalus::Models::Machines::PreviewCreateParams::Protocol] Body param
        #
        # @param visibility [Symbol, Dedalus::Models::Machines::PreviewCreateParams::Visibility] Body param
        #
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Preview]
        #
        # @see Dedalus::Models::Machines::PreviewCreateParams
        def create(params)
          parsed, options = Dedalus::Machines::PreviewCreateParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["v1/machines/%1$s/previews", machine_id],
            body: parsed,
            model: Dedalus::Machines::Preview,
            options: options
          )
        end

        # Get preview
        #
        # @overload retrieve(machine_id:, preview_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param preview_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Preview]
        #
        # @see Dedalus::Models::Machines::PreviewRetrieveParams
        def retrieve(params)
          parsed, options = Dedalus::Machines::PreviewRetrieveParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          preview_id =
            parsed.delete(:preview_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/previews/%2$s", machine_id, preview_id],
            model: Dedalus::Machines::Preview,
            options: options
          )
        end

        # List previews
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
        # @return [Dedalus::Internal::CursorPage<Dedalus::Models::Machines::Preview>]
        #
        # @see Dedalus::Models::Machines::PreviewListParams
        def list(params)
          parsed, options = Dedalus::Machines::PreviewListParams.dump_request(params)
          query = Dedalus::Internal::Util.encode_query_params(parsed)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/previews", machine_id],
            query: query,
            page: Dedalus::Internal::CursorPage,
            model: Dedalus::Machines::Preview,
            options: options
          )
        end

        # Delete preview
        #
        # @overload delete(machine_id:, preview_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param preview_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Preview]
        #
        # @see Dedalus::Models::Machines::PreviewDeleteParams
        def delete(params)
          parsed, options = Dedalus::Machines::PreviewDeleteParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          preview_id =
            parsed.delete(:preview_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/machines/%1$s/previews/%2$s", machine_id, preview_id],
            model: Dedalus::Machines::Preview,
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
