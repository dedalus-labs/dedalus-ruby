# typed: strong

module Dedalus
  module Models
    class MachineStorageUsageRow < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::MachineStorageUsageRow, Dedalus::Internal::AnyHash)
        end

      # Exclusive usage bucket end.
      sig { returns(Time) }
      attr_accessor :bucket_end

      # Inclusive usage bucket start.
      sig { returns(Time) }
      attr_accessor :bucket_start

      # Machine logical bytes observed for storage allocation.
      sig { returns(Integer) }
      attr_accessor :logical_storage_bytes

      # Machine identifier.
      sig { returns(String) }
      attr_accessor :machine_id

      # Org storage bucket ID this row contributes to.
      sig { returns(String) }
      attr_accessor :org_metering_bucket_id

      # Allocated logical MiB-seconds for this machine.
      sig { returns(Integer) }
      attr_accessor :storage_mib_seconds

      # Stripe storage meter event identifier linked to that org bucket.
      sig { returns(String) }
      attr_accessor :stripe_storage_identifier

      # Latest Stripe emission timestamp for the linked org bucket, when emitted.
      sig { returns(T.nilable(Time)) }
      attr_reader :latest_stripe_emitted_at

      sig { params(latest_stripe_emitted_at: Time).void }
      attr_writer :latest_stripe_emitted_at

      sig do
        params(
          bucket_end: Time,
          bucket_start: Time,
          logical_storage_bytes: Integer,
          machine_id: String,
          org_metering_bucket_id: String,
          storage_mib_seconds: Integer,
          stripe_storage_identifier: String,
          latest_stripe_emitted_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Exclusive usage bucket end.
        bucket_end:,
        # Inclusive usage bucket start.
        bucket_start:,
        # Machine logical bytes observed for storage allocation.
        logical_storage_bytes:,
        # Machine identifier.
        machine_id:,
        # Org storage bucket ID this row contributes to.
        org_metering_bucket_id:,
        # Allocated logical MiB-seconds for this machine.
        storage_mib_seconds:,
        # Stripe storage meter event identifier linked to that org bucket.
        stripe_storage_identifier:,
        # Latest Stripe emission timestamp for the linked org bucket, when emitted.
        latest_stripe_emitted_at: nil
      )
      end

      sig do
        override.returns(
          {
            bucket_end: Time,
            bucket_start: Time,
            logical_storage_bytes: Integer,
            machine_id: String,
            org_metering_bucket_id: String,
            storage_mib_seconds: Integer,
            stripe_storage_identifier: String,
            latest_stripe_emitted_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
