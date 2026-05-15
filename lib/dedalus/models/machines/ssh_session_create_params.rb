# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class SSHSessionCreateParams < Dedalus::Internal::Type::BaseModel
        # @!attribute public_key
        #
        #   @return [String]
        required :public_key, String

        # @!method initialize(public_key:)
        #   @param public_key [String]
      end
    end
  end
end
