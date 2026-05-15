# typed: strong

module Dedalus
  module Resources
    class Machines
      class Previews
        # Create preview
        sig do
          params(
            machine_id: String,
            port: Integer,
            protocol:
              Dedalus::Machines::PreviewCreateParams::Protocol::OrSymbol,
            visibility:
              Dedalus::Machines::PreviewCreateParams::Visibility::OrSymbol,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Preview)
        end
        def create(
          # Path param
          machine_id:,
          # Body param
          port:,
          # Body param
          protocol: nil,
          # Body param
          visibility: nil,
          request_options: {}
        )
        end

        # Get preview
        sig do
          params(
            machine_id: String,
            preview_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Preview)
        end
        def retrieve(machine_id:, preview_id:, request_options: {})
        end

        # List previews
        sig do
          params(
            machine_id: String,
            cursor: String,
            limit: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Internal::CursorPage[Dedalus::Machines::Preview])
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

        # Delete preview
        sig do
          params(
            machine_id: String,
            preview_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(Dedalus::Machines::Preview)
        end
        def delete(machine_id:, preview_id:, request_options: {})
        end

        # @api private
        sig { params(client: Dedalus::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
