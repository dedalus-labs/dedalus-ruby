# typed: strong

module Dedalus
  module Models
    module Machines
      module TerminalServerEvent
        extend Dedalus::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalOutputEvent,
              Dedalus::Machines::TerminalErrorEvent,
              Dedalus::Machines::TerminalClosedEvent
            )
          end

        sig do
          override.returns(
            T::Array[Dedalus::Machines::TerminalServerEvent::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
