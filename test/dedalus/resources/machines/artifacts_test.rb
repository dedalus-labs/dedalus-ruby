# frozen_string_literal: true

require_relative "../../test_helper"

class Dedalus::Test::Resources::Machines::ArtifactsTest < Dedalus::Test::ResourceTest
  def test_retrieve_required_params
    response = @dedalus.machines.artifacts.retrieve(machine_id: "dm-3", artifact_id: "artifact_id")

    assert_pattern do
      response => Dedalus::Machines::Artifact
    end

    assert_pattern do
      response => {
        artifact_id: String,
        created_at: Time,
        machine_id: String,
        name: String,
        size_bytes: Integer,
        download_url: String | nil,
        execution_id: String | nil,
        expires_at: Time | nil,
        mime_type: String | nil,
        sha256: String | nil
      }
    end
  end

  def test_list_required_params
    response = @dedalus.machines.artifacts.list(machine_id: "dm-3")

    assert_pattern do
      response => Dedalus::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dedalus::Machines::Artifact
    end

    assert_pattern do
      row => {
        artifact_id: String,
        created_at: Time,
        machine_id: String,
        name: String,
        size_bytes: Integer,
        download_url: String | nil,
        execution_id: String | nil,
        expires_at: Time | nil,
        mime_type: String | nil,
        sha256: String | nil
      }
    end
  end

  def test_delete_required_params
    response = @dedalus.machines.artifacts.delete(machine_id: "dm-3", artifact_id: "artifact_id")

    assert_pattern do
      response => Dedalus::Machines::Artifact
    end

    assert_pattern do
      response => {
        artifact_id: String,
        created_at: Time,
        machine_id: String,
        name: String,
        size_bytes: Integer,
        download_url: String | nil,
        execution_id: String | nil,
        expires_at: Time | nil,
        mime_type: String | nil,
        sha256: String | nil
      }
    end
  end
end
