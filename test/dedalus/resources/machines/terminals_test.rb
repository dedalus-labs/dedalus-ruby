# frozen_string_literal: true

require_relative "../../test_helper"

class Dedalus::Test::Resources::Machines::TerminalsTest < Dedalus::Test::ResourceTest
  def test_create_required_params
    response = @dedalus.machines.terminals.create(machine_id: "dm-3", height: 0, width: 0)

    assert_pattern do
      response => Dedalus::Machines::Terminal
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        machine_id: String,
        status: Dedalus::Machines::Terminal::Status,
        terminal_id: String,
        width: Integer,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Terminal::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        stream_url: String | nil
      }
    end
  end

  def test_retrieve_required_params
    response = @dedalus.machines.terminals.retrieve(machine_id: "dm-3", terminal_id: "terminal_id")

    assert_pattern do
      response => Dedalus::Machines::Terminal
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        machine_id: String,
        status: Dedalus::Machines::Terminal::Status,
        terminal_id: String,
        width: Integer,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Terminal::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        stream_url: String | nil
      }
    end
  end

  def test_list_required_params
    response = @dedalus.machines.terminals.list(machine_id: "dm-3")

    assert_pattern do
      response => Dedalus::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dedalus::Machines::Terminal
    end

    assert_pattern do
      row => {
        created_at: Time,
        height: Integer,
        machine_id: String,
        status: Dedalus::Machines::Terminal::Status,
        terminal_id: String,
        width: Integer,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Terminal::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        stream_url: String | nil
      }
    end
  end

  def test_delete_required_params
    response = @dedalus.machines.terminals.delete(machine_id: "dm-3", terminal_id: "terminal_id")

    assert_pattern do
      response => Dedalus::Machines::Terminal
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        machine_id: String,
        status: Dedalus::Machines::Terminal::Status,
        terminal_id: String,
        width: Integer,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Terminal::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        stream_url: String | nil
      }
    end
  end
end
