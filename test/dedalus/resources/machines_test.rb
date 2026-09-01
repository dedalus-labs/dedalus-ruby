# frozen_string_literal: true

require_relative "../test_helper"

class Dedalus::Test::Resources::MachinesTest < Dedalus::Test::ResourceTest
  def test_create
    response = @dedalus.machines.create

    assert_pattern do
      response => Dedalus::Machine
    end

    assert_pattern do
      response => {
        autosleep_seconds: Integer,
        desired_state: Dedalus::Machine::DesiredState,
        machine_id: String,
        memory_mib: Integer,
        phase: Dedalus::Machine::Phase,
        storage_gib: Integer,
        vcpu: Float
      }
    end
  end

  def test_retrieve_required_params
    response = @dedalus.machines.retrieve(machine_id: "dm-ecc2efdd-ddfa-31a9-c6f1-b833d337aa7c")

    assert_pattern do
      response => Dedalus::Models::MachineRetrieveResponse
    end

    assert_pattern do
      response => {
        autosleep_seconds: Integer,
        desired_state: Dedalus::Models::MachineRetrieveResponse::DesiredState,
        machine_id: String,
        memory_mib: Integer,
        status: Dedalus::LifecycleStatus,
        storage_gib: Integer,
        vcpu: Float
      }
    end
  end

  def test_update_required_params
    response = @dedalus.machines.update(machine_id: "dm-ecc2efdd-ddfa-31a9-c6f1-b833d337aa7c")

    assert_pattern do
      response => Dedalus::Machine
    end

    assert_pattern do
      response => {
        autosleep_seconds: Integer,
        desired_state: Dedalus::Machine::DesiredState,
        machine_id: String,
        memory_mib: Integer,
        phase: Dedalus::Machine::Phase,
        storage_gib: Integer,
        vcpu: Float
      }
    end
  end

  def test_list
    response = @dedalus.machines.list

    assert_pattern do
      response => Dedalus::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dedalus::MachineListItem
    end

    assert_pattern do
      row => {
        autosleep_seconds: Integer,
        created_at: Time,
        desired_state: Dedalus::MachineListItem::DesiredState,
        machine_id: String,
        memory_mib: Integer,
        phase: Dedalus::MachineListItem::Phase,
        storage_gib: Integer,
        vcpu: Float
      }
    end
  end

  def test_delete_required_params
    response = @dedalus.machines.delete(machine_id: "dm-ecc2efdd-ddfa-31a9-c6f1-b833d337aa7c")

    assert_pattern do
      response => Dedalus::Machine
    end

    assert_pattern do
      response => {
        autosleep_seconds: Integer,
        desired_state: Dedalus::Machine::DesiredState,
        machine_id: String,
        memory_mib: Integer,
        phase: Dedalus::Machine::Phase,
        storage_gib: Integer,
        vcpu: Float
      }
    end
  end

  def test_sleep__required_params
    response = @dedalus.machines.sleep_(machine_id: "dm-ecc2efdd-ddfa-31a9-c6f1-b833d337aa7c")

    assert_pattern do
      response => Dedalus::Machine
    end

    assert_pattern do
      response => {
        autosleep_seconds: Integer,
        desired_state: Dedalus::Machine::DesiredState,
        machine_id: String,
        memory_mib: Integer,
        phase: Dedalus::Machine::Phase,
        storage_gib: Integer,
        vcpu: Float
      }
    end
  end

  def test_wake_required_params
    response = @dedalus.machines.wake(machine_id: "dm-ecc2efdd-ddfa-31a9-c6f1-b833d337aa7c")

    assert_pattern do
      response => Dedalus::Machine
    end

    assert_pattern do
      response => {
        autosleep_seconds: Integer,
        desired_state: Dedalus::Machine::DesiredState,
        machine_id: String,
        memory_mib: Integer,
        phase: Dedalus::Machine::Phase,
        storage_gib: Integer,
        vcpu: Float
      }
    end
  end
end
