# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      module TerminalClientEvent
        extend Dedalus::Internal::Type::Union

        discriminator :type

        variant :input, -> { Dedalus::Machines::TerminalInputEvent }

        variant :resize, -> { Dedalus::Machines::TerminalResizeEvent }

        # @!method self.variants
        #   @return [Array(Dedalus::Models::Machines::TerminalInputEvent, Dedalus::Models::Machines::TerminalResizeEvent)]
      end
    end
  end
end
