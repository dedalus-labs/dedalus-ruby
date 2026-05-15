# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Usage#retrieve
    class OrgUsage < Dedalus::Internal::Type::BaseModel
      # @!attribute billed_awake_seconds
      #   Closed awake seconds in billed org buckets for the period.
      #
      #   @return [Integer]
      required :billed_awake_seconds, Integer

      # @!attribute billed_cpu_millicore_seconds
      #   Closed requested vCPU millicores multiplied by guest-owned active CPU seconds
      #   for the period.
      #
      #   @return [Integer]
      required :billed_cpu_millicore_seconds, Integer

      # @!attribute billed_logical_storage_mib_seconds
      #   Closed billable logical MiB-seconds for the period, matching the Stripe storage
      #   meter.
      #
      #   @return [Integer]
      required :billed_logical_storage_mib_seconds, Integer

      # @!attribute billed_memory_mib_seconds
      #   Closed requested memory MiB multiplied by running allocation seconds for the
      #   period.
      #
      #   @return [Integer]
      required :billed_memory_mib_seconds, Integer

      # @!attribute included_storage_gib
      #   Plan-included storage in GiB, used as a local guardrail only.
      #
      #   @return [Integer]
      required :included_storage_gib, Integer

      # @!attribute plan_slug
      #   Billing plan in effect for the organization.
      #
      #   @return [String]
      required :plan_slug, String

      # @!attribute provisioned_storage_gib
      #   Current provisioned storage summed across machines in GiB.
      #
      #   @return [Integer]
      required :provisioned_storage_gib, Integer

      # @!method initialize(billed_awake_seconds:, billed_cpu_millicore_seconds:, billed_logical_storage_mib_seconds:, billed_memory_mib_seconds:, included_storage_gib:, plan_slug:, provisioned_storage_gib:)
      #   Some parameter documentations has been truncated, see
      #   {Dedalus::Models::OrgUsage} for more details.
      #
      #   @param billed_awake_seconds [Integer] Closed awake seconds in billed org buckets for the period.
      #
      #   @param billed_cpu_millicore_seconds [Integer] Closed requested vCPU millicores multiplied by guest-owned active CPU seconds fo
      #
      #   @param billed_logical_storage_mib_seconds [Integer] Closed billable logical MiB-seconds for the period, matching the Stripe storage
      #
      #   @param billed_memory_mib_seconds [Integer] Closed requested memory MiB multiplied by running allocation seconds for the per
      #
      #   @param included_storage_gib [Integer] Plan-included storage in GiB, used as a local guardrail only.
      #
      #   @param plan_slug [String] Billing plan in effect for the organization.
      #
      #   @param provisioned_storage_gib [Integer] Current provisioned storage summed across machines in GiB.
    end
  end
end
