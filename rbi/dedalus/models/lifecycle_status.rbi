# typed: strong

module Dedalus
  module Models
    class LifecycleStatus < Dedalus::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dedalus::LifecycleStatus, Dedalus::Internal::AnyHash)
        end

      sig { returns(Time) }
      attr_accessor :last_progress_at

      sig { returns(Time) }
      attr_accessor :last_transition_at

      sig { returns(Dedalus::LifecycleStatus::Phase::TaggedSymbol) }
      attr_accessor :phase

      sig { returns(String) }
      attr_accessor :reason

      sig { returns(T::Boolean) }
      attr_accessor :retryable

      sig { returns(String) }
      attr_accessor :revision

      sig { returns(T.nilable(String)) }
      attr_reader :last_error

      sig { params(last_error: String).void }
      attr_writer :last_error

      sig do
        params(
          last_progress_at: Time,
          last_transition_at: Time,
          phase: Dedalus::LifecycleStatus::Phase::OrSymbol,
          reason: String,
          retryable: T::Boolean,
          revision: String,
          last_error: String
        ).returns(T.attached_class)
      end
      def self.new(
        last_progress_at:,
        last_transition_at:,
        phase:,
        reason:,
        retryable:,
        revision:,
        last_error: nil
      )
      end

      sig do
        override.returns(
          {
            last_progress_at: Time,
            last_transition_at: Time,
            phase: Dedalus::LifecycleStatus::Phase::TaggedSymbol,
            reason: String,
            retryable: T::Boolean,
            revision: String,
            last_error: String
          }
        )
      end
      def to_hash
      end

      module Phase
        extend Dedalus::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dedalus::LifecycleStatus::Phase) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPTED =
          T.let(:accepted, Dedalus::LifecycleStatus::Phase::TaggedSymbol)
        PLACEMENT_PENDING =
          T.let(
            :placement_pending,
            Dedalus::LifecycleStatus::Phase::TaggedSymbol
          )
        STARTING =
          T.let(:starting, Dedalus::LifecycleStatus::Phase::TaggedSymbol)
        RUNNING = T.let(:running, Dedalus::LifecycleStatus::Phase::TaggedSymbol)
        STOPPING =
          T.let(:stopping, Dedalus::LifecycleStatus::Phase::TaggedSymbol)
        SLEEPING =
          T.let(:sleeping, Dedalus::LifecycleStatus::Phase::TaggedSymbol)
        DESTROYING =
          T.let(:destroying, Dedalus::LifecycleStatus::Phase::TaggedSymbol)
        DESTROYED =
          T.let(:destroyed, Dedalus::LifecycleStatus::Phase::TaggedSymbol)
        FAILED = T.let(:failed, Dedalus::LifecycleStatus::Phase::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dedalus::LifecycleStatus::Phase::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
