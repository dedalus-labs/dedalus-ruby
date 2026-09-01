# typed: strong

module Dedalus
  module Models
    class MachineRetrieveResponse < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dedalus::Models::MachineRetrieveResponse,
            Dedalus::Internal::AnyHash
          )
        end

      # Seconds of inactivity before autosleep. 0 disables autosleep.
      sig { returns(Integer) }
      attr_accessor :autosleep_seconds

      sig do
        returns(
          Dedalus::Models::MachineRetrieveResponse::DesiredState::TaggedSymbol
        )
      end
      attr_accessor :desired_state

      sig { returns(String) }
      attr_accessor :machine_id

      # Memory in MiB.
      sig { returns(Integer) }
      attr_accessor :memory_mib

      sig { returns(Dedalus::LifecycleStatus) }
      attr_reader :status

      sig { params(status: Dedalus::LifecycleStatus::OrHash).void }
      attr_writer :status

      sig { returns(Integer) }
      attr_accessor :storage_gib

      # CPU in vCPUs.
      sig { returns(Float) }
      attr_accessor :vcpu

      sig do
        params(
          autosleep_seconds: Integer,
          desired_state:
            Dedalus::Models::MachineRetrieveResponse::DesiredState::OrSymbol,
          machine_id: String,
          memory_mib: Integer,
          status: Dedalus::LifecycleStatus::OrHash,
          storage_gib: Integer,
          vcpu: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Seconds of inactivity before autosleep. 0 disables autosleep.
        autosleep_seconds:,
        desired_state:,
        machine_id:,
        # Memory in MiB.
        memory_mib:,
        status:,
        storage_gib:,
        # CPU in vCPUs.
        vcpu:
      )
      end

      sig do
        override.returns(
          {
            autosleep_seconds: Integer,
            desired_state:
              Dedalus::Models::MachineRetrieveResponse::DesiredState::TaggedSymbol,
            machine_id: String,
            memory_mib: Integer,
            status: Dedalus::LifecycleStatus,
            storage_gib: Integer,
            vcpu: Float
          }
        )
      end
      def to_hash
      end

      module DesiredState
        extend Dedalus::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dedalus::Models::MachineRetrieveResponse::DesiredState
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RUNNING =
          T.let(
            :running,
            Dedalus::Models::MachineRetrieveResponse::DesiredState::TaggedSymbol
          )
        SLEEPING =
          T.let(
            :sleeping,
            Dedalus::Models::MachineRetrieveResponse::DesiredState::TaggedSymbol
          )
        DESTROYED =
          T.let(
            :destroyed,
            Dedalus::Models::MachineRetrieveResponse::DesiredState::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dedalus::Models::MachineRetrieveResponse::DesiredState::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
