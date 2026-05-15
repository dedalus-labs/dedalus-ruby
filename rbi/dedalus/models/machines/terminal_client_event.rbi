# typed: strong

module Dedalus
  module Models
    module Machines
      module TerminalClientEvent
        extend Dedalus::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalInputEvent,
              Dedalus::Machines::TerminalResizeEvent
            )
          end

        sig do
          override.returns(
            T::Array[Dedalus::Machines::TerminalClientEvent::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
