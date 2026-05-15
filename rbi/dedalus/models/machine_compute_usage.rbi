# typed: strong

module Dedalus
  module Models
    class MachineComputeUsage < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::MachineComputeUsage, Dedalus::Internal::AnyHash)
        end

      # Usage breakdown granularity used for rows: hour or day.
      sig { returns(String) }
      attr_accessor :granularity

      # Exclusive usage period end.
      sig { returns(Time) }
      attr_accessor :period_end

      # Inclusive usage period start.
      sig { returns(Time) }
      attr_accessor :period_start

      # Machine-level compute usage breakdown rows.
      sig { returns(T.nilable(T::Array[Dedalus::MachineComputeUsageRow])) }
      attr_accessor :rows

      sig do
        params(
          granularity: String,
          period_end: Time,
          period_start: Time,
          rows: T.nilable(T::Array[Dedalus::MachineComputeUsageRow::OrHash])
        ).returns(T.attached_class)
      end
      def self.new(
        # Usage breakdown granularity used for rows: hour or day.
        granularity:,
        # Exclusive usage period end.
        period_end:,
        # Inclusive usage period start.
        period_start:,
        # Machine-level compute usage breakdown rows.
        rows:
      )
      end

      sig do
        override.returns(
          {
            granularity: String,
            period_end: Time,
            period_start: Time,
            rows: T.nilable(T::Array[Dedalus::MachineComputeUsageRow])
          }
        )
      end
      def to_hash
      end
    end
  end
end
