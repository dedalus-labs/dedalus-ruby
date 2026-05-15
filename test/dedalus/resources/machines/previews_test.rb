# frozen_string_literal: true

require_relative "../../test_helper"

class Dedalus::Test::Resources::Machines::PreviewsTest < Dedalus::Test::ResourceTest
  def test_create_required_params
    response = @dedalus.machines.previews.create(machine_id: "dm-3", port: 0)

    assert_pattern do
      response => Dedalus::Machines::Preview
    end

    assert_pattern do
      response => {
        created_at: Time,
        machine_id: String,
        port: Integer,
        preview_id: String,
        status: Dedalus::Machines::Preview::Status,
        visibility: Dedalus::Machines::Preview::Visibility,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Preview::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        url: String | nil
      }
    end
  end

  def test_retrieve_required_params
    response = @dedalus.machines.previews.retrieve(machine_id: "dm-3", preview_id: "preview_id")

    assert_pattern do
      response => Dedalus::Machines::Preview
    end

    assert_pattern do
      response => {
        created_at: Time,
        machine_id: String,
        port: Integer,
        preview_id: String,
        status: Dedalus::Machines::Preview::Status,
        visibility: Dedalus::Machines::Preview::Visibility,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Preview::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        url: String | nil
      }
    end
  end

  def test_list_required_params
    response = @dedalus.machines.previews.list(machine_id: "dm-3")

    assert_pattern do
      response => Dedalus::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dedalus::Machines::Preview
    end

    assert_pattern do
      row => {
        created_at: Time,
        machine_id: String,
        port: Integer,
        preview_id: String,
        status: Dedalus::Machines::Preview::Status,
        visibility: Dedalus::Machines::Preview::Visibility,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Preview::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        url: String | nil
      }
    end
  end

  def test_delete_required_params
    response = @dedalus.machines.previews.delete(machine_id: "dm-3", preview_id: "preview_id")

    assert_pattern do
      response => Dedalus::Machines::Preview
    end

    assert_pattern do
      response => {
        created_at: Time,
        machine_id: String,
        port: Integer,
        preview_id: String,
        status: Dedalus::Machines::Preview::Status,
        visibility: Dedalus::Machines::Preview::Visibility,
        error_code: String | nil,
        error_message: String | nil,
        expires_at: Time | nil,
        protocol: Dedalus::Machines::Preview::Protocol | nil,
        ready_at: Time | nil,
        retry_after_ms: Integer | nil,
        url: String | nil
      }
    end
  end
end
