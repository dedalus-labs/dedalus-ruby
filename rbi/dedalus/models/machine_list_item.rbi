# typed: strong

module Dedalus
  module Models
    class MachineListItem < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::MachineListItem, Dedalus::Internal::AnyHash)
        end

      # Seconds of inactivity before autosleep. 0 disables autosleep.
      sig { returns(Integer) }
      attr_accessor :autosleep_seconds

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dedalus::MachineListItem::DesiredState::TaggedSymbol) }
      attr_accessor :desired_state

      sig { returns(String) }
      attr_accessor :machine_id

      # Memory in MiB.
      sig { returns(Integer) }
      attr_accessor :memory_mib

      sig { returns(Dedalus::MachineListItem::Phase::TaggedSymbol) }
      attr_accessor :phase

      sig { returns(Integer) }
      attr_accessor :storage_gib

      # CPU in vCPUs.
      sig { returns(Float) }
      attr_accessor :vcpu

      sig do
        params(
          autosleep_seconds: Integer,
          created_at: Time,
          desired_state: Dedalus::MachineListItem::DesiredState::OrSymbol,
          machine_id: String,
          memory_mib: Integer,
          phase: Dedalus::MachineListItem::Phase::OrSymbol,
          storage_gib: Integer,
          vcpu: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Seconds of inactivity before autosleep. 0 disables autosleep.
        autosleep_seconds:,
        created_at:,
        desired_state:,
        machine_id:,
        # Memory in MiB.
        memory_mib:,
        phase:,
        storage_gib:,
        # CPU in vCPUs.
        vcpu:
      )
      end

      sig do
        override.returns(
          {
            autosleep_seconds: Integer,
            created_at: Time,
            desired_state: Dedalus::MachineListItem::DesiredState::TaggedSymbol,
            machine_id: String,
            memory_mib: Integer,
            phase: Dedalus::MachineListItem::Phase::TaggedSymbol,
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
          T.type_alias { T.all(Symbol, Dedalus::MachineListItem::DesiredState) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RUNNING =
          T.let(:running, Dedalus::MachineListItem::DesiredState::TaggedSymbol)
        SLEEPING =
          T.let(:sleeping, Dedalus::MachineListItem::DesiredState::TaggedSymbol)
        DESTROYED =
          T.let(
            :destroyed,
            Dedalus::MachineListItem::DesiredState::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dedalus::MachineListItem::DesiredState::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Phase
        extend Dedalus::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dedalus::MachineListItem::Phase) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPTED =
          T.let(:accepted, Dedalus::MachineListItem::Phase::TaggedSymbol)
        PLACEMENT_PENDING =
          T.let(
            :placement_pending,
            Dedalus::MachineListItem::Phase::TaggedSymbol
          )
        STARTING =
          T.let(:starting, Dedalus::MachineListItem::Phase::TaggedSymbol)
        RUNNING = T.let(:running, Dedalus::MachineListItem::Phase::TaggedSymbol)
        STOPPING =
          T.let(:stopping, Dedalus::MachineListItem::Phase::TaggedSymbol)
        SLEEPING =
          T.let(:sleeping, Dedalus::MachineListItem::Phase::TaggedSymbol)
        DESTROYING =
          T.let(:destroying, Dedalus::MachineListItem::Phase::TaggedSymbol)
        DESTROYED =
          T.let(:destroyed, Dedalus::MachineListItem::Phase::TaggedSymbol)
        FAILED = T.let(:failed, Dedalus::MachineListItem::Phase::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dedalus::MachineListItem::Phase::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
