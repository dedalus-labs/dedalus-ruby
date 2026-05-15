# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::SSH#create
      class SSHSession < Dedalus::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String

        # @!attribute status
        #
        #   @return [Symbol, Dedalus::Models::Machines::SSHSession::Status]
        required :status, enum: -> { Dedalus::Machines::SSHSession::Status }

        # @!attribute connection
        #
        #   @return [Dedalus::Models::Machines::SSHConnection, nil]
        optional :connection, -> { Dedalus::Machines::SSHConnection }

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

        # @!attribute ready_at
        #
        #   @return [Time, nil]
        optional :ready_at, Time

        # @!attribute retry_after_ms
        #
        #   @return [Integer, nil]
        optional :retry_after_ms, Integer

        # @!method initialize(created_at:, machine_id:, session_id:, status:, connection: nil, error_code: nil, error_message: nil, expires_at: nil, ready_at: nil, retry_after_ms: nil)
        #   @param created_at [Time]
        #   @param machine_id [String]
        #   @param session_id [String]
        #   @param status [Symbol, Dedalus::Models::Machines::SSHSession::Status]
        #   @param connection [Dedalus::Models::Machines::SSHConnection]
        #   @param error_code [String]
        #   @param error_message [String]
        #   @param expires_at [Time]
        #   @param ready_at [Time]
        #   @param retry_after_ms [Integer]

        # @see Dedalus::Models::Machines::SSHSession#status
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
      end
    end
  end
end
