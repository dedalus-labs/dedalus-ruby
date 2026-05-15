# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class TerminalResizeEvent < Dedalus::Internal::Type::BaseModel
        # @!attribute height
        #
        #   @return [Integer]
        required :height, Integer

        # @!attribute type
        #
        #   @return [Symbol, Dedalus::Models::Machines::TerminalResizeEvent::Type]
        required :type, enum: -> { Dedalus::Machines::TerminalResizeEvent::Type }

        # @!attribute width
        #
        #   @return [Integer]
        required :width, Integer

        # @!method initialize(height:, type:, width:)
        #   @param height [Integer]
        #   @param type [Symbol, Dedalus::Models::Machines::TerminalResizeEvent::Type]
        #   @param width [Integer]

        # @see Dedalus::Models::Machines::TerminalResizeEvent#type
        module Type
          extend Dedalus::Internal::Type::Enum

          RESIZE = :resize

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
