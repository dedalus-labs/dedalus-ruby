# typed: strong

module Dedalus
  module Models
    class MachineStorageUsage < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::MachineStorageUsage, Dedalus::Internal::AnyHash)
        end

      # Exclusive usage period end.
      sig { returns(Time) }
      attr_accessor :period_end

      # Inclusive usage period start.
      sig { returns(Time) }
      attr_accessor :period_start

      # Machine-level storage usage breakdown rows.
      sig { returns(T.nilable(T::Array[Dedalus::MachineStorageUsageRow])) }
      attr_accessor :rows

      sig do
        params(
          period_end: Time,
          period_start: Time,
          rows: T.nilable(T::Array[Dedalus::MachineStorageUsageRow::OrHash])
        ).returns(T.attached_class)
      end
      def self.new(
        # Exclusive usage period end.
        period_end:,
        # Inclusive usage period start.
        period_start:,
        # Machine-level storage usage breakdown rows.
        rows:
      )
      end

      sig do
        override.returns(
          {
            period_end: Time,
            period_start: Time,
            rows: T.nilable(T::Array[Dedalus::MachineStorageUsageRow])
          }
        )
      end
      def to_hash
      end
    end
  end
end
