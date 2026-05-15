# typed: strong

module Dedalus
  module Models
    class CreateParams < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::CreateParams, Dedalus::Internal::AnyHash)
        end

      # Memory in MiB.
      sig { returns(Integer) }
      attr_accessor :memory_mib

      # Storage in GiB.
      sig { returns(Integer) }
      attr_accessor :storage_gib

      # CPU in vCPUs.
      sig { returns(Float) }
      attr_accessor :vcpu

      # Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h,
      # 7d3h4s, or 1w3d, raw seconds ("1800"), or never to disable.
      sig { returns(T.nilable(String)) }
      attr_reader :autosleep

      sig { params(autosleep: String).void }
      attr_writer :autosleep

      sig do
        params(
          memory_mib: Integer,
          storage_gib: Integer,
          vcpu: Float,
          autosleep: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Memory in MiB.
        memory_mib:,
        # Storage in GiB.
        storage_gib:,
        # CPU in vCPUs.
        vcpu:,
        # Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h,
        # 7d3h4s, or 1w3d, raw seconds ("1800"), or never to disable.
        autosleep: nil
      )
      end

      sig do
        override.returns(
          {
            memory_mib: Integer,
            storage_gib: Integer,
            vcpu: Float,
            autosleep: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
