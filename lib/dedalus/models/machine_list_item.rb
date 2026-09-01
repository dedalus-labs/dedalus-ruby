# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Machines#list
    class MachineListItem < Dedalus::Internal::Type::BaseModel
      # @!attribute autosleep_seconds
      #   Seconds of inactivity before autosleep. 0 disables autosleep.
      #
      #   @return [Integer]
      required :autosleep_seconds, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute desired_state
      #
      #   @return [Symbol, Dedalus::Models::MachineListItem::DesiredState]
      required :desired_state, enum: -> { Dedalus::MachineListItem::DesiredState }

      # @!attribute machine_id
      #
      #   @return [String]
      required :machine_id, String

      # @!attribute memory_mib
      #   Memory in MiB.
      #
      #   @return [Integer]
      required :memory_mib, Integer

      # @!attribute phase
      #
      #   @return [Symbol, Dedalus::Models::MachineListItem::Phase]
      required :phase, enum: -> { Dedalus::MachineListItem::Phase }

      # @!attribute storage_gib
      #
      #   @return [Integer]
      required :storage_gib, Integer

      # @!attribute vcpu
      #   CPU in vCPUs.
      #
      #   @return [Float]
      required :vcpu, Float

      # @!method initialize(autosleep_seconds:, created_at:, desired_state:, machine_id:, memory_mib:, phase:, storage_gib:, vcpu:)
      #   @param autosleep_seconds [Integer] Seconds of inactivity before autosleep. 0 disables autosleep.
      #
      #   @param created_at [Time]
      #
      #   @param desired_state [Symbol, Dedalus::Models::MachineListItem::DesiredState]
      #
      #   @param machine_id [String]
      #
      #   @param memory_mib [Integer] Memory in MiB.
      #
      #   @param phase [Symbol, Dedalus::Models::MachineListItem::Phase]
      #
      #   @param storage_gib [Integer]
      #
      #   @param vcpu [Float] CPU in vCPUs.

      # @see Dedalus::Models::MachineListItem#desired_state
      module DesiredState
        extend Dedalus::Internal::Type::Enum

        RUNNING = :running
        SLEEPING = :sleeping
        DESTROYED = :destroyed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Dedalus::Models::MachineListItem#phase
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
