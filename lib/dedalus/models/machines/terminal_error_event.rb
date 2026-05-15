# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class TerminalErrorEvent < Dedalus::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Dedalus::Models::Machines::TerminalErrorEvent::Type]
        required :type, enum: -> { Dedalus::Machines::TerminalErrorEvent::Type }

        # @!attribute error_code
        #
        #   @return [String, nil]
        optional :error_code, String

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!method initialize(type:, error_code: nil, error_message: nil)
        #   @param type [Symbol, Dedalus::Models::Machines::TerminalErrorEvent::Type]
        #   @param error_code [String]
        #   @param error_message [String]

        # @see Dedalus::Models::Machines::TerminalErrorEvent#type
        module Type
          extend Dedalus::Internal::Type::Enum

          ERROR = :error

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
