# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class TerminalClosedEvent < Dedalus::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Dedalus::Models::Machines::TerminalClosedEvent::Type]
        required :type, enum: -> { Dedalus::Machines::TerminalClosedEvent::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, Dedalus::Models::Machines::TerminalClosedEvent::Type]

        # @see Dedalus::Models::Machines::TerminalClosedEvent#type
        module Type
          extend Dedalus::Internal::Type::Enum

          CLOSED = :closed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
