# frozen_string_literal: true

require_relative "../../test_helper"

class Dedalus::Test::Resources::Machines::SSHTest < Dedalus::Test::ResourceTest
  def test_create_required_params
    response = @dedalus.machines.ssh.create(machine_id: "dm-3", public_key: "public_key")

    assert_pattern do
      response => Dedalus::Machines::SSHSession
    end

    assert_pattern do
      response => {
        created_at: Time,
        machine_id: String,
        session_id: String,
        status: Dedalus::Machines::SSHSession::Status,
        connection: Dedalus::Machines::SSHConnection | nil,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil
      }
    end
  end

  def test_retrieve_required_params
    response = @dedalus.machines.ssh.retrieve(machine_id: "dm-3", session_id: "session_id")

    assert_pattern do
      response => Dedalus::Machines::SSHSession
    end

    assert_pattern do
      response => {
        created_at: Time,
        machine_id: String,
        session_id: String,
        status: Dedalus::Machines::SSHSession::Status,
        connection: Dedalus::Machines::SSHConnection | nil,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil
      }
    end
  end

  def test_list_required_params
    response = @dedalus.machines.ssh.list(machine_id: "dm-3")

    assert_pattern do
      response => Dedalus::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dedalus::Machines::SSHSession
    end

    assert_pattern do
      row => {
        created_at: Time,
        machine_id: String,
        session_id: String,
        status: Dedalus::Machines::SSHSession::Status,
        connection: Dedalus::Machines::SSHConnection | nil,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil
      }
    end
  end

  def test_delete_required_params
    response = @dedalus.machines.ssh.delete(machine_id: "dm-3", session_id: "session_id")

    assert_pattern do
      response => Dedalus::Machines::SSHSession
    end

    assert_pattern do
      response => {
        created_at: Time,
        machine_id: String,
        session_id: String,
        status: Dedalus::Machines::SSHSession::Status,
        connection: Dedalus::Machines::SSHConnection | nil,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil
      }
    end
  end
end
