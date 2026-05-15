# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class SSHConnection < Dedalus::Internal::Type::BaseModel
        # @!attribute endpoint
        #
        #   @return [String]
        required :endpoint, String

        # @!attribute port
        #
        #   @return [Integer]
        required :port, Integer

        # @!attribute ssh_username
        #
        #   @return [String]
        required :ssh_username, String

        # @!attribute host_trust
        #
        #   @return [Dedalus::Models::Machines::SSHHostTrust, nil]
        optional :host_trust, -> { Dedalus::Machines::SSHHostTrust }

        # @!attribute user_certificate
        #
        #   @return [String, nil]
        optional :user_certificate, String

        # @!method initialize(endpoint:, port:, ssh_username:, host_trust: nil, user_certificate: nil)
        #   @param endpoint [String]
        #   @param port [Integer]
        #   @param ssh_username [String]
        #   @param host_trust [Dedalus::Models::Machines::SSHHostTrust]
        #   @param user_certificate [String]
      end
    end
  end
end
