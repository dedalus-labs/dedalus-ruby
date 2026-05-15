# frozen_string_literal: true

module Dedalus
  module Resources
    class Machines
      class Artifacts
        # Get artifact
        #
        # @overload retrieve(machine_id:, artifact_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param artifact_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Artifact]
        #
        # @see Dedalus::Models::Machines::ArtifactRetrieveParams
        def retrieve(params)
          parsed, options = Dedalus::Machines::ArtifactRetrieveParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          artifact_id =
            parsed.delete(:artifact_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/artifacts/%2$s", machine_id, artifact_id],
            model: Dedalus::Machines::Artifact,
            options: options
          )
        end

        # List artifacts
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
        # @return [Dedalus::Internal::CursorPage<Dedalus::Models::Machines::Artifact>]
        #
        # @see Dedalus::Models::Machines::ArtifactListParams
        def list(params)
          parsed, options = Dedalus::Machines::ArtifactListParams.dump_request(params)
          query = Dedalus::Internal::Util.encode_query_params(parsed)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/machines/%1$s/artifacts", machine_id],
            query: query,
            page: Dedalus::Internal::CursorPage,
            model: Dedalus::Machines::Artifact,
            options: options
          )
        end

        # Delete artifact
        #
        # @overload delete(machine_id:, artifact_id:, request_options: {})
        #
        # @param machine_id [String]
        # @param artifact_id [String]
        # @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dedalus::Models::Machines::Artifact]
        #
        # @see Dedalus::Models::Machines::ArtifactDeleteParams
        def delete(params)
          parsed, options = Dedalus::Machines::ArtifactDeleteParams.dump_request(params)
          machine_id =
            parsed.delete(:machine_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          artifact_id =
            parsed.delete(:artifact_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/machines/%1$s/artifacts/%2$s", machine_id, artifact_id],
            model: Dedalus::Machines::Artifact,
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
