# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Executions#events
      class ExecutionEvent < Dedalus::Internal::Type::BaseModel
        # @!attribute at
        #
        #   @return [Time]
        required :at, Time

        # @!attribute sequence
        #
        #   @return [Integer]
        required :sequence, Integer

        # @!attribute type
        #
        #   @return [Symbol, Dedalus::Models::Machines::ExecutionEvent::Type]
        required :type, enum: -> { Dedalus::Machines::ExecutionEvent::Type }

        # @!attribute chunk
        #
        #   @return [String, nil]
        optional :chunk, String

        # @!attribute error_code
        #
        #   @return [String, nil]
        optional :error_code, String

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!attribute exit_code
        #
        #   @return [Integer, nil]
        optional :exit_code, Integer

        # @!attribute signal
        #
        #   @return [Integer, nil]
        optional :signal, Integer

        # @!attribute status
        #
        #   @return [Symbol, Dedalus::Models::Machines::ExecutionEvent::Status, nil]
        optional :status, enum: -> { Dedalus::Machines::ExecutionEvent::Status }

        # @!method initialize(at:, sequence:, type:, chunk: nil, error_code: nil, error_message: nil, exit_code: nil, signal: nil, status: nil)
        #   @param at [Time]
        #   @param sequence [Integer]
        #   @param type [Symbol, Dedalus::Models::Machines::ExecutionEvent::Type]
        #   @param chunk [String]
        #   @param error_code [String]
        #   @param error_message [String]
        #   @param exit_code [Integer]
        #   @param signal [Integer]
        #   @param status [Symbol, Dedalus::Models::Machines::ExecutionEvent::Status]

        # @see Dedalus::Models::Machines::ExecutionEvent#type
        module Type
          extend Dedalus::Internal::Type::Enum

          LIFECYCLE = :lifecycle
          STDOUT = :stdout
          STDERR = :stderr

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dedalus::Models::Machines::ExecutionEvent#status
        module Status
          extend Dedalus::Internal::Type::Enum

          WAKE_IN_PROGRESS = :wake_in_progress
          QUEUED = :queued
          RUNNING = :running
          SUCCEEDED = :succeeded
          FAILED = :failed
          CANCELLED = :cancelled
          EXPIRED = :expired

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
