# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Previews#create
      class Preview < Dedalus::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute port
        #
        #   @return [Integer]
        required :port, Integer

        # @!attribute preview_id
        #
        #   @return [String]
        required :preview_id, String

        # @!attribute status
        #
        #   @return [Symbol, Dedalus::Models::Machines::Preview::Status]
        required :status, enum: -> { Dedalus::Machines::Preview::Status }

        # @!attribute visibility
        #
        #   @return [Symbol, Dedalus::Models::Machines::Preview::Visibility]
        required :visibility, enum: -> { Dedalus::Machines::Preview::Visibility }

        # @!attribute error_code
        #
        #   @return [String, nil]
        optional :error_code, String

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!attribute protocol
        #
        #   @return [Symbol, Dedalus::Models::Machines::Preview::Protocol, nil]
        optional :protocol, enum: -> { Dedalus::Machines::Preview::Protocol }

        # @!attribute ready_at
        #
        #   @return [Time, nil]
        optional :ready_at, Time

        # @!attribute retry_after_ms
        #
        #   @return [Integer, nil]
        optional :retry_after_ms, Integer

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(created_at:, machine_id:, port:, preview_id:, status:, visibility:, error_code: nil, error_message: nil, expires_at: nil, protocol: nil, ready_at: nil, retry_after_ms: nil, url: nil)
        #   @param created_at [Time]
        #   @param machine_id [String]
        #   @param port [Integer]
        #   @param preview_id [String]
        #   @param status [Symbol, Dedalus::Models::Machines::Preview::Status]
        #   @param visibility [Symbol, Dedalus::Models::Machines::Preview::Visibility]
        #   @param error_code [String]
        #   @param error_message [String]
        #   @param expires_at [Time]
        #   @param protocol [Symbol, Dedalus::Models::Machines::Preview::Protocol]
        #   @param ready_at [Time]
        #   @param retry_after_ms [Integer]
        #   @param url [String]

        # @see Dedalus::Models::Machines::Preview#status
        module Status
          extend Dedalus::Internal::Type::Enum

          WAKE_IN_PROGRESS = :wake_in_progress
          READY = :ready
          CLOSED = :closed
          EXPIRED = :expired
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dedalus::Models::Machines::Preview#visibility
        module Visibility
          extend Dedalus::Internal::Type::Enum

          PUBLIC = :public
          PRIVATE = :private
          ORG = :org

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dedalus::Models::Machines::Preview#protocol
        module Protocol
          extend Dedalus::Internal::Type::Enum

          HTTP = :http
          HTTPS = :https

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
