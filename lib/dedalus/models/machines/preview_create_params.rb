# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class PreviewCreateParams < Dedalus::Internal::Type::BaseModel
        # @!attribute port
        #
        #   @return [Integer]
        required :port, Integer

        # @!attribute protocol
        #
        #   @return [Symbol, Dedalus::Models::Machines::PreviewCreateParams::Protocol, nil]
        optional :protocol, enum: -> { Dedalus::Machines::PreviewCreateParams::Protocol }

        # @!attribute visibility
        #
        #   @return [Symbol, Dedalus::Models::Machines::PreviewCreateParams::Visibility, nil]
        optional :visibility, enum: -> { Dedalus::Machines::PreviewCreateParams::Visibility }

        # @!method initialize(port:, protocol: nil, visibility: nil)
        #   @param port [Integer]
        #   @param protocol [Symbol, Dedalus::Models::Machines::PreviewCreateParams::Protocol]
        #   @param visibility [Symbol, Dedalus::Models::Machines::PreviewCreateParams::Visibility]

        # @see Dedalus::Models::Machines::PreviewCreateParams#protocol
        module Protocol
          extend Dedalus::Internal::Type::Enum

          HTTP = :http
          HTTPS = :https

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dedalus::Models::Machines::PreviewCreateParams#visibility
        module Visibility
          extend Dedalus::Internal::Type::Enum

          PUBLIC = :public
          PRIVATE = :private
          ORG = :org

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
