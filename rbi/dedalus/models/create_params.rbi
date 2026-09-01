# typed: strong

module Dedalus
  module Models
    class CreateParams < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::CreateParams, Dedalus::Internal::AnyHash)
        end

      # Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h,
      # 7d3h4s, or 1w3d, raw seconds ("1800"), or never to disable.
      sig { returns(T.nilable(String)) }
      attr_reader :autosleep

      sig { params(autosleep: String).void }
      attr_writer :autosleep

      # Memory in MiB.
      sig { returns(T.nilable(Integer)) }
      attr_reader :memory_mib

      sig { params(memory_mib: Integer).void }
      attr_writer :memory_mib

      # Storage in GiB.
      sig { returns(T.nilable(Integer)) }
      attr_reader :storage_gib

      sig { params(storage_gib: Integer).void }
      attr_writer :storage_gib

      # CPU in vCPUs.
      sig { returns(T.nilable(Float)) }
      attr_reader :vcpu

      sig { params(vcpu: Float).void }
      attr_writer :vcpu

      sig do
        params(
          autosleep: String,
          memory_mib: Integer,
          storage_gib: Integer,
          vcpu: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Idle window before autosleep. Accepts fixed duration units like 30s, 30m, 2h,
        # 7d3h4s, or 1w3d, raw seconds ("1800"), or never to disable.
        autosleep: nil,
        # Memory in MiB.
        memory_mib: nil,
        # Storage in GiB.
        storage_gib: nil,
        # CPU in vCPUs.
        vcpu: nil
      )
      end

      sig do
        override.returns(
          {
            autosleep: String,
            memory_mib: Integer,
            storage_gib: Integer,
            vcpu: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
