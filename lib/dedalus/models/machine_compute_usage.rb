# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Usage#machine_compute
    class MachineComputeUsage < Dedalus::Internal::Type::BaseModel
      # @!attribute granularity
      #   Usage breakdown granularity used for rows: hour or day.
      #
      #   @return [String]
      required :granularity, String

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
      #   Machine-level compute usage breakdown rows.
      #
      #   @return [Array<Dedalus::Models::MachineComputeUsageRow>, nil]
      required :rows, -> { Dedalus::Internal::Type::ArrayOf[Dedalus::MachineComputeUsageRow] }, nil?: true

      # @!method initialize(granularity:, period_end:, period_start:, rows:)
      #   @param granularity [String] Usage breakdown granularity used for rows: hour or day.
      #
      #   @param period_end [Time] Exclusive usage period end.
      #
      #   @param period_start [Time] Inclusive usage period start.
      #
      #   @param rows [Array<Dedalus::Models::MachineComputeUsageRow>, nil] Machine-level compute usage breakdown rows.
    end
  end
end
