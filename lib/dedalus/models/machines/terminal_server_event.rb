# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      module TerminalServerEvent
        extend Dedalus::Internal::Type::Union

        discriminator :type

        variant :output, -> { Dedalus::Machines::TerminalOutputEvent }

        variant :error, -> { Dedalus::Machines::TerminalErrorEvent }

        variant :closed, -> { Dedalus::Machines::TerminalClosedEvent }

        # @!method self.variants
        #   @return [Array(Dedalus::Models::Machines::TerminalOutputEvent, Dedalus::Models::Machines::TerminalErrorEvent, Dedalus::Models::Machines::TerminalClosedEvent)]
      end
    end
  end
end
