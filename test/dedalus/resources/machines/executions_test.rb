# frozen_string_literal: true

require_relative "../../test_helper"

class Dedalus::Test::Resources::Machines::ExecutionsTest < Dedalus::Test::ResourceTest
  def test_create_required_params
    response = @dedalus.machines.executions.create(machine_id: "dm-3", command: ["string"])

    assert_pattern do
      response => Dedalus::Machines::Execution
    end

    assert_pattern do
      response => {
        command: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time,
        execution_id: String,
        machine_id: String,
        status: Dedalus::Machines::Execution::Status,
        artifacts: ^(Dedalus::Internal::Type::ArrayOf[Dedalus::Machines::ArtifactRef]) | nil,
        completed_at: Time | nil,
        cwd: String | nil,
        env_keys: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        error_code: String | nil,
        error_message: String | nil,
        exit_code: Integer | nil,
        expires_at: Time | nil,
        retry_after_ms: Integer | nil,
        signal: Integer | nil,
        started_at: Time | nil,
        stderr_bytes: Integer | nil,
        stderr_truncated: Dedalus::Internal::Type::Boolean | nil,
        stdout_bytes: Integer | nil,
        stdout_truncated: Dedalus::Internal::Type::Boolean | nil
      }
    end
  end

  def test_retrieve_required_params
    response = @dedalus.machines.executions.retrieve(machine_id: "dm-3", execution_id: "execution_id")

    assert_pattern do
      response => Dedalus::Machines::Execution
    end

    assert_pattern do
      response => {
        command: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time,
        execution_id: String,
        machine_id: String,
        status: Dedalus::Machines::Execution::Status,
        artifacts: ^(Dedalus::Internal::Type::ArrayOf[Dedalus::Machines::ArtifactRef]) | nil,
        completed_at: Time | nil,
        cwd: String | nil,
        env_keys: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        error_code: String | nil,
        error_message: String | nil,
        exit_code: Integer | nil,
        expires_at: Time | nil,
        retry_after_ms: Integer | nil,
        signal: Integer | nil,
        started_at: Time | nil,
        stderr_bytes: Integer | nil,
        stderr_truncated: Dedalus::Internal::Type::Boolean | nil,
        stdout_bytes: Integer | nil,
        stdout_truncated: Dedalus::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list_required_params
    response = @dedalus.machines.executions.list(machine_id: "dm-3")

    assert_pattern do
      response => Dedalus::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dedalus::Machines::Execution
    end

    assert_pattern do
      row => {
        command: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time,
        execution_id: String,
        machine_id: String,
        status: Dedalus::Machines::Execution::Status,
        artifacts: ^(Dedalus::Internal::Type::ArrayOf[Dedalus::Machines::ArtifactRef]) | nil,
        completed_at: Time | nil,
        cwd: String | nil,
        env_keys: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        error_code: String | nil,
        error_message: String | nil,
        exit_code: Integer | nil,
        expires_at: Time | nil,
        retry_after_ms: Integer | nil,
        signal: Integer | nil,
        started_at: Time | nil,
        stderr_bytes: Integer | nil,
        stderr_truncated: Dedalus::Internal::Type::Boolean | nil,
        stdout_bytes: Integer | nil,
        stdout_truncated: Dedalus::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delete_required_params
    response = @dedalus.machines.executions.delete(machine_id: "dm-3", execution_id: "execution_id")

    assert_pattern do
      response => Dedalus::Machines::Execution
    end

    assert_pattern do
      response => {
        command: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time,
        execution_id: String,
        machine_id: String,
        status: Dedalus::Machines::Execution::Status,
        artifacts: ^(Dedalus::Internal::Type::ArrayOf[Dedalus::Machines::ArtifactRef]) | nil,
        completed_at: Time | nil,
        cwd: String | nil,
        env_keys: ^(Dedalus::Internal::Type::ArrayOf[String]) | nil,
        error_code: String | nil,
        error_message: String | nil,
        exit_code: Integer | nil,
        expires_at: Time | nil,
        retry_after_ms: Integer | nil,
        signal: Integer | nil,
        started_at: Time | nil,
        stderr_bytes: Integer | nil,
        stderr_truncated: Dedalus::Internal::Type::Boolean | nil,
        stdout_bytes: Integer | nil,
        stdout_truncated: Dedalus::Internal::Type::Boolean | nil
      }
    end
  end

  def test_events_required_params
    response = @dedalus.machines.executions.events(machine_id: "dm-3", execution_id: "execution_id")

    assert_pattern do
      response => Dedalus::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dedalus::Machines::ExecutionEvent
    end

    assert_pattern do
      row => {
        at: Time,
        sequence: Integer,
        type: Dedalus::Machines::ExecutionEvent::Type,
        chunk: String | nil,
        error_code: String | nil,
        error_message: String | nil,
        exit_code: Integer | nil,
        signal: Integer | nil,
        status: Dedalus::Machines::ExecutionEvent::Status | nil
      }
    end
  end

  def test_output_required_params
    response = @dedalus.machines.executions.output(machine_id: "dm-3", execution_id: "execution_id")

    assert_pattern do
      response => Dedalus::Machines::ExecutionOutput
    end

    assert_pattern do
      response => {
        execution_id: String,
        stderr: String | nil,
        stderr_bytes: Integer | nil,
        stderr_truncated: Dedalus::Internal::Type::Boolean | nil,
        stdout: String | nil,
        stdout_bytes: Integer | nil,
        stdout_truncated: Dedalus::Internal::Type::Boolean | nil
      }
    end
  end
end
