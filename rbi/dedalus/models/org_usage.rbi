# typed: strong

module Dedalus
  module Models
    class OrgUsage < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Dedalus::OrgUsage, Dedalus::Internal::AnyHash) }

      # Closed awake seconds in billed org buckets for the period.
      sig { returns(Integer) }
      attr_accessor :billed_awake_seconds

      # Closed requested vCPU millicores multiplied by guest-owned active CPU seconds
      # for the period.
      sig { returns(Integer) }
      attr_accessor :billed_cpu_millicore_seconds

      # Closed billable logical MiB-seconds for the period, matching the Stripe storage
      # meter.
      sig { returns(Integer) }
      attr_accessor :billed_logical_storage_mib_seconds

      # Closed requested memory MiB multiplied by running allocation seconds for the
      # period.
      sig { returns(Integer) }
      attr_accessor :billed_memory_mib_seconds

      # Plan-included storage in GiB, used as a local guardrail only.
      sig { returns(Integer) }
      attr_accessor :included_storage_gib

      # Billing plan in effect for the organization.
      sig { returns(String) }
      attr_accessor :plan_slug

      # Current provisioned storage summed across machines in GiB.
      sig { returns(Integer) }
      attr_accessor :provisioned_storage_gib

      sig do
        params(
          billed_awake_seconds: Integer,
          billed_cpu_millicore_seconds: Integer,
          billed_logical_storage_mib_seconds: Integer,
          billed_memory_mib_seconds: Integer,
          included_storage_gib: Integer,
          plan_slug: String,
          provisioned_storage_gib: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Closed awake seconds in billed org buckets for the period.
        billed_awake_seconds:,
        # Closed requested vCPU millicores multiplied by guest-owned active CPU seconds
        # for the period.
        billed_cpu_millicore_seconds:,
        # Closed billable logical MiB-seconds for the period, matching the Stripe storage
        # meter.
        billed_logical_storage_mib_seconds:,
        # Closed requested memory MiB multiplied by running allocation seconds for the
        # period.
        billed_memory_mib_seconds:,
        # Plan-included storage in GiB, used as a local guardrail only.
        included_storage_gib:,
        # Billing plan in effect for the organization.
        plan_slug:,
        # Current provisioned storage summed across machines in GiB.
        provisioned_storage_gib:
      )
      end

      sig do
        override.returns(
          {
            billed_awake_seconds: Integer,
            billed_cpu_millicore_seconds: Integer,
            billed_logical_storage_mib_seconds: Integer,
            billed_memory_mib_seconds: Integer,
            included_storage_gib: Integer,
            plan_slug: String,
            provisioned_storage_gib: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
