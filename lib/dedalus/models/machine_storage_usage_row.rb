# frozen_string_literal: true

module Dedalus
  module Models
    class MachineStorageUsageRow < Dedalus::Internal::Type::BaseModel
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

      # @!attribute logical_storage_bytes
      #   Machine logical bytes observed for storage allocation.
      #
      #   @return [Integer]
      required :logical_storage_bytes, Integer

      # @!attribute machine_id
      #   Machine identifier.
      #
      #   @return [String]
      required :machine_id, String

      # @!attribute org_metering_bucket_id
      #   Org storage bucket ID this row contributes to.
      #
      #   @return [String]
      required :org_metering_bucket_id, String

      # @!attribute storage_mib_seconds
      #   Allocated logical MiB-seconds for this machine.
      #
      #   @return [Integer]
      required :storage_mib_seconds, Integer

      # @!attribute stripe_storage_identifier
      #   Stripe storage meter event identifier linked to that org bucket.
      #
      #   @return [String]
      required :stripe_storage_identifier, String

      # @!attribute latest_stripe_emitted_at
      #   Latest Stripe emission timestamp for the linked org bucket, when emitted.
      #
      #   @return [Time, nil]
      optional :latest_stripe_emitted_at, Time

      # @!method initialize(bucket_end:, bucket_start:, logical_storage_bytes:, machine_id:, org_metering_bucket_id:, storage_mib_seconds:, stripe_storage_identifier:, latest_stripe_emitted_at: nil)
      #   @param bucket_end [Time] Exclusive usage bucket end.
      #
      #   @param bucket_start [Time] Inclusive usage bucket start.
      #
      #   @param logical_storage_bytes [Integer] Machine logical bytes observed for storage allocation.
      #
      #   @param machine_id [String] Machine identifier.
      #
      #   @param org_metering_bucket_id [String] Org storage bucket ID this row contributes to.
      #
      #   @param storage_mib_seconds [Integer] Allocated logical MiB-seconds for this machine.
      #
      #   @param stripe_storage_identifier [String] Stripe storage meter event identifier linked to that org bucket.
      #
      #   @param latest_stripe_emitted_at [Time] Latest Stripe emission timestamp for the linked org bucket, when emitted.
    end
  end
end
