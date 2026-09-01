# frozen_string_literal: true

module Dedalus
  module Models
    class CreateParams < Dedalus::Internal::Type::BaseModel
      # @!attribute autosleep
      #   Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h,
      #   7d3h4s, or 1w3d, raw seconds ("1800"), or never to disable.
      #
      #   @return [String, nil]
      optional :autosleep, String

      # @!attribute memory_mib
      #   Memory in MiB.
      #
      #   @return [Integer, nil]
      optional :memory_mib, Integer

      # @!attribute storage_gib
      #   Storage in GiB.
      #
      #   @return [Integer, nil]
      optional :storage_gib, Integer

      # @!attribute vcpu
      #   CPU in vCPUs.
      #
      #   @return [Float, nil]
      optional :vcpu, Float

      # @!method initialize(autosleep: nil, memory_mib: nil, storage_gib: nil, vcpu: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dedalus::Models::CreateParams} for more details.
      #
      #   @param autosleep [String] Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h, 7d
      #
      #   @param memory_mib [Integer] Memory in MiB.
      #
      #   @param storage_gib [Integer] Storage in GiB.
      #
      #   @param vcpu [Float] CPU in vCPUs.
    end
  end
end
