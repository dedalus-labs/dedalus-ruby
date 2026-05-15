# frozen_string_literal: true

module Dedalus
  module Models
    class LifecycleStatus < Dedalus::Internal::Type::BaseModel
      # @!attribute last_progress_at
      #
      #   @return [Time]
      required :last_progress_at, Time

      # @!attribute last_transition_at
      #
      #   @return [Time]
      required :last_transition_at, Time

      # @!attribute phase
      #
      #   @return [Symbol, Dedalus::Models::LifecycleStatus::Phase]
      required :phase, enum: -> { Dedalus::LifecycleStatus::Phase }

      # @!attribute reason
      #
      #   @return [String]
      required :reason, String

      # @!attribute retryable
      #
      #   @return [Boolean]
      required :retryable, Dedalus::Internal::Type::Boolean

      # @!attribute revision
      #
      #   @return [String]
      required :revision, String

      # @!attribute last_error
      #
      #   @return [String, nil]
      optional :last_error, String

      # @!method initialize(last_progress_at:, last_transition_at:, phase:, reason:, retryable:, revision:, last_error: nil)
      #   @param last_progress_at [Time]
      #   @param last_transition_at [Time]
      #   @param phase [Symbol, Dedalus::Models::LifecycleStatus::Phase]
      #   @param reason [String]
      #   @param retryable [Boolean]
      #   @param revision [String]
      #   @param last_error [String]

      # @see Dedalus::Models::LifecycleStatus#phase
      module Phase
        extend Dedalus::Internal::Type::Enum

        ACCEPTED = :accepted
        PLACEMENT_PENDING = :placement_pending
        STARTING = :starting
        RUNNING = :running
        STOPPING = :stopping
        SLEEPING = :sleeping
        DESTROYING = :destroying
        DESTROYED = :destroyed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
