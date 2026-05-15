# typed: strong

module Dedalus
  module Models
    class MachineComputeUsageRow < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::MachineComputeUsageRow, Dedalus::Internal::AnyHash)
        end

      # Machine-awake seconds in this bucket.
      sig { returns(Integer) }
      attr_accessor :awake_seconds

      # Exclusive usage bucket end.
      sig { returns(Time) }
      attr_accessor :bucket_end

      # Inclusive usage bucket start.
      sig { returns(Time) }
      attr_accessor :bucket_start

      # Requested vCPU millicores multiplied by guest-owned active CPU seconds.
      sig { returns(Integer) }
      attr_accessor :cpu_millicore_seconds

      # Latest raw window_end represented by this row.
      sig { returns(Time) }
      attr_accessor :last_window_end

      # Machine identifier.
      sig { returns(String) }
      attr_accessor :machine_id

      # Requested memory MiB multiplied by running allocation seconds.
      sig { returns(Integer) }
      attr_accessor :memory_mib_seconds

      # Org compute bucket IDs this row contributes to.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :org_metering_bucket_ids

      # Requested memory for this shape, in MiB.
      sig { returns(Integer) }
      attr_accessor :requested_memory_mib

      # Requested storage for this shape, in GiB.
      sig { returns(Integer) }
      attr_accessor :requested_storage_gib

      # Requested vCPU for this shape.
      sig { returns(Float) }
      attr_accessor :requested_vcpu

      # Stable fingerprint for the requested machine shape.
      sig { returns(String) }
      attr_accessor :spec_fingerprint

      # Stripe CPU meter event identifiers linked to those org buckets.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :stripe_cpu_identifiers

      # Stripe memory meter event identifiers linked to those org buckets.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :stripe_memory_identifiers

      # Raw usage windows compacted into this row.
      sig { returns(Integer) }
      attr_accessor :window_count

      # Latest Stripe emission timestamp for linked org buckets, when emitted.
      sig { returns(T.nilable(Time)) }
      attr_reader :latest_stripe_emitted_at

      sig { params(latest_stripe_emitted_at: Time).void }
      attr_writer :latest_stripe_emitted_at

      sig do
        params(
          awake_seconds: Integer,
          bucket_end: Time,
          bucket_start: Time,
          cpu_millicore_seconds: Integer,
          last_window_end: Time,
          machine_id: String,
          memory_mib_seconds: Integer,
          org_metering_bucket_ids: T.nilable(T::Array[String]),
          requested_memory_mib: Integer,
          requested_storage_gib: Integer,
          requested_vcpu: Float,
          spec_fingerprint: String,
          stripe_cpu_identifiers: T.nilable(T::Array[String]),
          stripe_memory_identifiers: T.nilable(T::Array[String]),
          window_count: Integer,
          latest_stripe_emitted_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Machine-awake seconds in this bucket.
        awake_seconds:,
        # Exclusive usage bucket end.
        bucket_end:,
        # Inclusive usage bucket start.
        bucket_start:,
        # Requested vCPU millicores multiplied by guest-owned active CPU seconds.
        cpu_millicore_seconds:,
        # Latest raw window_end represented by this row.
        last_window_end:,
        # Machine identifier.
        machine_id:,
        # Requested memory MiB multiplied by running allocation seconds.
        memory_mib_seconds:,
        # Org compute bucket IDs this row contributes to.
        org_metering_bucket_ids:,
        # Requested memory for this shape, in MiB.
        requested_memory_mib:,
        # Requested storage for this shape, in GiB.
        requested_storage_gib:,
        # Requested vCPU for this shape.
        requested_vcpu:,
        # Stable fingerprint for the requested machine shape.
        spec_fingerprint:,
        # Stripe CPU meter event identifiers linked to those org buckets.
        stripe_cpu_identifiers:,
        # Stripe memory meter event identifiers linked to those org buckets.
        stripe_memory_identifiers:,
        # Raw usage windows compacted into this row.
        window_count:,
        # Latest Stripe emission timestamp for linked org buckets, when emitted.
        latest_stripe_emitted_at: nil
      )
      end

      sig do
        override.returns(
          {
            awake_seconds: Integer,
            bucket_end: Time,
            bucket_start: Time,
            cpu_millicore_seconds: Integer,
            last_window_end: Time,
            machine_id: String,
            memory_mib_seconds: Integer,
            org_metering_bucket_ids: T.nilable(T::Array[String]),
            requested_memory_mib: Integer,
            requested_storage_gib: Integer,
            requested_vcpu: Float,
            spec_fingerprint: String,
            stripe_cpu_identifiers: T.nilable(T::Array[String]),
            stripe_memory_identifiers: T.nilable(T::Array[String]),
            window_count: Integer,
            latest_stripe_emitted_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
