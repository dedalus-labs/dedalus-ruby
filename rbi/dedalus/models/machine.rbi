# typed: strong

module Dedalus
  module Models
    class Machine < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Dedalus::Machine, Dedalus::Internal::AnyHash) }

      # Seconds of inactivity before autosleep. 0 disables autosleep.
      sig { returns(Integer) }
      attr_accessor :autosleep_seconds

      sig { returns(Dedalus::Machine::DesiredState::TaggedSymbol) }
      attr_accessor :desired_state

      sig { returns(String) }
      attr_accessor :machine_id

      # Memory in MiB.
      sig { returns(Integer) }
      attr_accessor :memory_mib

      sig { returns(Dedalus::Machine::Phase::TaggedSymbol) }
      attr_accessor :phase

      sig { returns(Integer) }
      attr_accessor :storage_gib

      # CPU in vCPUs.
      sig { returns(Float) }
      attr_accessor :vcpu

      sig do
        params(
          autosleep_seconds: Integer,
          desired_state: Dedalus::Machine::DesiredState::OrSymbol,
          machine_id: String,
          memory_mib: Integer,
          phase: Dedalus::Machine::Phase::OrSymbol,
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
            desired_state: Dedalus::Machine::DesiredState::TaggedSymbol,
            machine_id: String,
            memory_mib: Integer,
            phase: Dedalus::Machine::Phase::TaggedSymbol,
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
          T.type_alias { T.all(Symbol, Dedalus::Machine::DesiredState) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RUNNING = T.let(:running, Dedalus::Machine::DesiredState::TaggedSymbol)
        SLEEPING =
          T.let(:sleeping, Dedalus::Machine::DesiredState::TaggedSymbol)
        DESTROYED =
          T.let(:destroyed, Dedalus::Machine::DesiredState::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dedalus::Machine::DesiredState::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Phase
        extend Dedalus::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dedalus::Machine::Phase) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPTED = T.let(:accepted, Dedalus::Machine::Phase::TaggedSymbol)
        PLACEMENT_PENDING =
          T.let(:placement_pending, Dedalus::Machine::Phase::TaggedSymbol)
        STARTING = T.let(:starting, Dedalus::Machine::Phase::TaggedSymbol)
        RUNNING = T.let(:running, Dedalus::Machine::Phase::TaggedSymbol)
        STOPPING = T.let(:stopping, Dedalus::Machine::Phase::TaggedSymbol)
        SLEEPING = T.let(:sleeping, Dedalus::Machine::Phase::TaggedSymbol)
        DESTROYING = T.let(:destroying, Dedalus::Machine::Phase::TaggedSymbol)
        DESTROYED = T.let(:destroyed, Dedalus::Machine::Phase::TaggedSymbol)
        FAILED = T.let(:failed, Dedalus::Machine::Phase::TaggedSymbol)

        sig do
          override.returns(T::Array[Dedalus::Machine::Phase::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
