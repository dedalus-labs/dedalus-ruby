# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Usage#machine_storage
    class MachineStorageUsage < Dedalus::Internal::Type::BaseModel
      # @!attribute period_end
      #   Exclusive usage period end.
      #
      #   @return [Time]
      required :period_end, Time

      # @!attribute period_start
      #   Inclusive usage period start.
      #
      #   @return [Time]
      required :period_start, Time

      # @!attribute rows
      #   Machine-level storage usage breakdown rows.
      #
      #   @return [Array<Dedalus::Models::MachineStorageUsageRow>, nil]
      required :rows, -> { Dedalus::Internal::Type::ArrayOf[Dedalus::MachineStorageUsageRow] }, nil?: true

      # @!method initialize(period_end:, period_start:, rows:)
      #   @param period_end [Time] Exclusive usage period end.
      #
      #   @param period_start [Time] Inclusive usage period start.
      #
      #   @param rows [Array<Dedalus::Models::MachineStorageUsageRow>, nil] Machine-level storage usage breakdown rows.
    end
  end
end
