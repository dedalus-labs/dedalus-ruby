# frozen_string_literal: true

require_relative "../test_helper"

class Dedalus::Test::Resources::UsageTest < Dedalus::Test::ResourceTest
  def test_retrieve
    response = @dedalus.usage.retrieve

    assert_pattern do
      response => Dedalus::OrgUsage
    end

    assert_pattern do
      response => {
        billed_awake_seconds: Integer,
        billed_cpu_millicore_seconds: Integer,
        billed_logical_storage_mib_seconds: Integer,
        billed_memory_mib_seconds: Integer,
        included_storage_gib: Integer,
        plan_slug: String,
        provisioned_storage_gib: Integer
      }
    end
  end

  def test_machine_compute
    response = @dedalus.usage.machine_compute

    assert_pattern do
      response => Dedalus::MachineComputeUsage
    end

    assert_pattern do
      response => {
        granularity: String,
        period_end: Time,
        period_start: Time,
        rows: ^(Dedalus::Internal::Type::ArrayOf[Dedalus::MachineComputeUsageRow]) | nil
      }
    end
  end

  def test_machine_storage
    response = @dedalus.usage.machine_storage

    assert_pattern do
      response => Dedalus::MachineStorageUsage
    end

    assert_pattern do
      response => {
        period_end: Time,
        period_start: Time,
        rows: ^(Dedalus::Internal::Type::ArrayOf[Dedalus::MachineStorageUsageRow]) | nil
      }
    end
  end
end
