# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Executions#create
      class Execution < Dedalus::Internal::Type::BaseModel
        # @!attribute command
        #
        #   @return [Array<String>, nil]
        required :command, Dedalus::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute execution_id
        #
        #   @return [String]
        required :execution_id, String

        # @!attribute machine_id
        #
        #   @return [String]
        required :machine_id, String

        # @!attribute status
        #
        #   @return [Symbol, Dedalus::Models::Machines::Execution::Status]
        required :status, enum: -> { Dedalus::Machines::Execution::Status }

        # @!attribute artifacts
        #
        #   @return [Array<Dedalus::Models::Machines::ArtifactRef>, nil]
        optional :artifacts,
                 -> {
                   Dedalus::Internal::Type::ArrayOf[Dedalus::Machines::ArtifactRef]
                 },
                 nil?: true

        # @!attribute completed_at
        #
        #   @return [Time, nil]
        optional :completed_at, Time

        # @!attribute cwd
        #
        #   @return [String, nil]
        optional :cwd, String

        # @!attribute env_keys
        #
        #   @return [Array<String>, nil]
        optional :env_keys, Dedalus::Internal::Type::ArrayOf[String], nil?: true

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

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!attribute retry_after_ms
        #
        #   @return [Integer, nil]
        optional :retry_after_ms, Integer

        # @!attribute signal
        #
        #   @return [Integer, nil]
        optional :signal, Integer

        # @!attribute started_at
        #
        #   @return [Time, nil]
        optional :started_at, Time

        # @!attribute stderr_bytes
        #
        #   @return [Integer, nil]
        optional :stderr_bytes, Integer

        # @!attribute stderr_truncated
        #
        #   @return [Boolean, nil]
        optional :stderr_truncated, Dedalus::Internal::Type::Boolean

        # @!attribute stdout_bytes
        #
        #   @return [Integer, nil]
        optional :stdout_bytes, Integer

        # @!attribute stdout_truncated
        #
        #   @return [Boolean, nil]
        optional :stdout_truncated, Dedalus::Internal::Type::Boolean

        # @!method initialize(command:, created_at:, execution_id:, machine_id:, status:, artifacts: nil, completed_at: nil, cwd: nil, env_keys: nil, error_code: nil, error_message: nil, exit_code: nil, expires_at: nil, retry_after_ms: nil, signal: nil, started_at: nil, stderr_bytes: nil, stderr_truncated: nil, stdout_bytes: nil, stdout_truncated: nil)
        #   @param command [Array<String>, nil]
        #   @param created_at [Time]
        #   @param execution_id [String]
        #   @param machine_id [String]
        #   @param status [Symbol, Dedalus::Models::Machines::Execution::Status]
        #   @param artifacts [Array<Dedalus::Models::Machines::ArtifactRef>, nil]
        #   @param completed_at [Time]
        #   @param cwd [String]
        #   @param env_keys [Array<String>, nil]
        #   @param error_code [String]
        #   @param error_message [String]
        #   @param exit_code [Integer]
        #   @param expires_at [Time]
        #   @param retry_after_ms [Integer]
        #   @param signal [Integer]
        #   @param started_at [Time]
        #   @param stderr_bytes [Integer]
        #   @param stderr_truncated [Boolean]
        #   @param stdout_bytes [Integer]
        #   @param stdout_truncated [Boolean]

        # @see Dedalus::Models::Machines::Execution#status
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
