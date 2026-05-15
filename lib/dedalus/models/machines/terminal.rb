# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Terminals#create
      class Terminal < Dedalus::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute height
        #
        #   @return [Integer]
        required :height, Integer

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute status
        #
        #   @return [Symbol, Dedalus::Models::Machines::Terminal::Status]
        required :status, enum: -> { Dedalus::Machines::Terminal::Status }

        # @!attribute terminal_id
        #
        #   @return [String]
        required :terminal_id, String

        # @!attribute width
        #
        #   @return [Integer]
        required :width, Integer

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
        #   @return [Symbol, Dedalus::Models::Machines::Terminal::Protocol, nil]
        optional :protocol, enum: -> { Dedalus::Machines::Terminal::Protocol }

        # @!attribute ready_at
        #
        #   @return [Time, nil]
        optional :ready_at, Time

        # @!attribute retry_after_ms
        #
        #   @return [Integer, nil]
        optional :retry_after_ms, Integer

        # @!attribute stream_url
        #
        #   @return [String, nil]
        optional :stream_url, String

        # @!method initialize(created_at:, height:, machine_id:, status:, terminal_id:, width:, error_code: nil, error_message: nil, expires_at: nil, protocol: nil, ready_at: nil, retry_after_ms: nil, stream_url: nil)
        #   @param created_at [Time]
        #   @param height [Integer]
        #   @param machine_id [String]
        #   @param status [Symbol, Dedalus::Models::Machines::Terminal::Status]
        #   @param terminal_id [String]
        #   @param width [Integer]
        #   @param error_code [String]
        #   @param error_message [String]
        #   @param expires_at [Time]
        #   @param protocol [Symbol, Dedalus::Models::Machines::Terminal::Protocol]
        #   @param ready_at [Time]
        #   @param retry_after_ms [Integer]
        #   @param stream_url [String]

        # @see Dedalus::Models::Machines::Terminal#status
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

        # @see Dedalus::Models::Machines::Terminal#protocol
        module Protocol
          extend Dedalus::Internal::Type::Enum

          WEBSOCKET = :websocket

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
