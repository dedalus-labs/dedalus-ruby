# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class SSHHostTrust < Dedalus::Internal::Type::BaseModel
        # @!attribute host_pattern
        #
        #   @return [String]
        required :host_pattern, String

        # @!attribute kind
        #
        #   @return [Symbol, Dedalus::Models::Machines::SSHHostTrust::Kind]
        required :kind, enum: -> { Dedalus::Machines::SSHHostTrust::Kind }

        # @!attribute public_key
        #
        #   @return [String]
        required :public_key, String

        # @!method initialize(host_pattern:, kind:, public_key:)
        #   @param host_pattern [String]
        #   @param kind [Symbol, Dedalus::Models::Machines::SSHHostTrust::Kind]
        #   @param public_key [String]

        # @see Dedalus::Models::Machines::SSHHostTrust#kind
        module Kind
          extend Dedalus::Internal::Type::Enum

          CERT_AUTHORITY = :cert_authority

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
