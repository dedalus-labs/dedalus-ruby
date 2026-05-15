# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class TerminalInputEvent < Dedalus::Internal::Type::BaseModel
        # @!attribute data
        #   Base64-encoded terminal input.
        #
        #   @return [String]
        required :data, String

        # @!attribute type
        #
        #   @return [Symbol, Dedalus::Models::Machines::TerminalInputEvent::Type]
        required :type, enum: -> { Dedalus::Machines::TerminalInputEvent::Type }

        # @!method initialize(data:, type:)
        #   @param data [String] Base64-encoded terminal input.
        #
        #   @param type [Symbol, Dedalus::Models::Machines::TerminalInputEvent::Type]

        # @see Dedalus::Models::Machines::TerminalInputEvent#type
        module Type
          extend Dedalus::Internal::Type::Enum

          INPUT = :input

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
