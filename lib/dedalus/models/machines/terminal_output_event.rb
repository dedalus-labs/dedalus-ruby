# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class TerminalOutputEvent < Dedalus::Internal::Type::BaseModel
        # @!attribute data
        #   Base64-encoded terminal output.
        #
        #   @return [String]
        required :data, String

        # @!attribute type
        #
        #   @return [Symbol, Dedalus::Models::Machines::TerminalOutputEvent::Type]
        required :type, enum: -> { Dedalus::Machines::TerminalOutputEvent::Type }

        # @!method initialize(data:, type:)
        #   @param data [String] Base64-encoded terminal output.
        #
        #   @param type [Symbol, Dedalus::Models::Machines::TerminalOutputEvent::Type]

        # @see Dedalus::Models::Machines::TerminalOutputEvent#type
        module Type
          extend Dedalus::Internal::Type::Enum

          OUTPUT = :output

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
