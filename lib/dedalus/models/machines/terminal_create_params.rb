# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      class TerminalCreateParams < Dedalus::Internal::Type::BaseModel
        # @!attribute height
        #
        #   @return [Integer]
        required :height, Integer

        # @!attribute width
        #
        #   @return [Integer]
        required :width, Integer

        # @!attribute cwd
        #
        #   @return [String, nil]
        optional :cwd, String

        # @!attribute env
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :env, Dedalus::Internal::Type::HashOf[String]

        # @!attribute shell
        #
        #   @return [String, nil]
        optional :shell, String

        # @!method initialize(height:, width:, cwd: nil, env: nil, shell: nil)
        #   @param height [Integer]
        #   @param width [Integer]
        #   @param cwd [String]
        #   @param env [Hash{Symbol=>String}]
        #   @param shell [String]
      end
    end
  end
end
