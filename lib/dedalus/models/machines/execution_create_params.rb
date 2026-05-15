# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class ExecutionCreateParams < Dedalus::Internal::Type::BaseModel
        # @!attribute command
        #
        #   @return [Array<String>, nil]
        required :command, Dedalus::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute cwd
        #
        #   @return [String, nil]
        optional :cwd, String

        # @!attribute env
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :env, Dedalus::Internal::Type::HashOf[String]

        # @!attribute stdin
        #
        #   @return [String, nil]
        optional :stdin, String

        # @!attribute timeout_ms
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!method initialize(command:, cwd: nil, env: nil, stdin: nil, timeout_ms: nil)
        #   @param command [Array<String>, nil]
        #   @param cwd [String]
        #   @param env [Hash{Symbol=>String}]
        #   @param stdin [String]
        #   @param timeout_ms [Integer]
      end
    end
  end
end
