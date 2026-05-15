# frozen_string_literal: true

module Dedalus
  module Models
    class MachineComputeUsageRow < Dedalus::Internal::Type::BaseModel
      # @!attribute awake_seconds
      #   Machine-awake seconds in this bucket.
      #
      #   @return [Integer]
      required :awake_seconds, Integer

      # @!attribute bucket_end
      #   Exclusive usage bucket end.
      #
      #   @return [Time]
      required :bucket_end, Time

      # @!attribute bucket_start
      #   Inclusive usage bucket start.
      #
      #   @return [Time]
      required :bucket_start, Time

      # @!attribute cpu_millicore_seconds
      #   Requested vCPU millicores multiplied by guest-owned active CPU seconds.
      #
      #   @return [Integer]
      required :cpu_millicore_seconds, Integer

      # @!attribute last_window_end
      #   Latest raw window_end represented by this row.
      #
      #   @return [Time]
      required :last_window_end, Time

      # @!attribute machine_id
      #   Machine identifier.
      #
      #   @return [String]
      required :machine_id, String

      # @!attribute memory_mib_seconds
      #   Requested memory MiB multiplied by running allocation seconds.
      #
      #   @return [Integer]
      required :memory_mib_seconds, Integer

      # @!attribute org_metering_bucket_ids
      #   Org compute bucket IDs this row contributes to.
      #
      #   @return [Array<String>, nil]
      required :org_metering_bucket_ids, Dedalus::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute requested_memory_mib
      #   Requested memory for this shape, in MiB.
      #
      #   @return [Integer]
      required :requested_memory_mib, Integer

      # @!attribute requested_storage_gib
      #   Requested storage for this shape, in GiB.
      #
      #   @return [Integer]
      required :requested_storage_gib, Integer

      # @!attribute requested_vcpu
      #   Requested vCPU for this shape.
      #
      #   @return [Float]
      required :requested_vcpu, Float

      # @!attribute spec_fingerprint
      #   Stable fingerprint for the requested machine shape.
      #
      #   @return [String]
      required :spec_fingerprint, String

      # @!attribute stripe_cpu_identifiers
      #   Stripe CPU meter event identifiers linked to those org buckets.
      #
      #   @return [Array<String>, nil]
      required :stripe_cpu_identifiers, Dedalus::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute stripe_memory_identifiers
      #   Stripe memory meter event identifiers linked to those org buckets.
      #
      #   @return [Array<String>, nil]
      required :stripe_memory_identifiers, Dedalus::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute window_count
      #   Raw usage windows compacted into this row.
      #
      #   @return [Integer]
      required :window_count, Integer

      # @!attribute latest_stripe_emitted_at
      #   Latest Stripe emission timestamp for linked org buckets, when emitted.
      #
      #   @return [Time, nil]
      optional :latest_stripe_emitted_at, Time

      # @!method initialize(awake_seconds:, bucket_end:, bucket_start:, cpu_millicore_seconds:, last_window_end:, machine_id:, memory_mib_seconds:, org_metering_bucket_ids:, requested_memory_mib:, requested_storage_gib:, requested_vcpu:, spec_fingerprint:, stripe_cpu_identifiers:, stripe_memory_identifiers:, window_count:, latest_stripe_emitted_at: nil)
      #   @param awake_seconds [Integer] Machine-awake seconds in this bucket.
      #
      #   @param bucket_end [Time] Exclusive usage bucket end.
      #
      #   @param bucket_start [Time] Inclusive usage bucket start.
      #
      #   @param cpu_millicore_seconds [Integer] Requested vCPU millicores multiplied by guest-owned active CPU seconds.
      #
      #   @param last_window_end [Time] Latest raw window_end represented by this row.
      #
      #   @param machine_id [String] Machine identifier.
      #
      #   @param memory_mib_seconds [Integer] Requested memory MiB multiplied by running allocation seconds.
      #
      #   @param org_metering_bucket_ids [Array<String>, nil] Org compute bucket IDs this row contributes to.
      #
      #   @param requested_memory_mib [Integer] Requested memory for this shape, in MiB.
      #
      #   @param requested_storage_gib [Integer] Requested storage for this shape, in GiB.
      #
      #   @param requested_vcpu [Float] Requested vCPU for this shape.
      #
      #   @param spec_fingerprint [String] Stable fingerprint for the requested machine shape.
      #
      #   @param stripe_cpu_identifiers [Array<String>, nil] Stripe CPU meter event identifiers linked to those org buckets.
      #
      #   @param stripe_memory_identifiers [Array<String>, nil] Stripe memory meter event identifiers linked to those org buckets.
      #
      #   @param window_count [Integer] Raw usage windows compacted into this row.
      #
      #   @param latest_stripe_emitted_at [Time] Latest Stripe emission timestamp for linked org buckets, when emitted.
    end
  end
end
