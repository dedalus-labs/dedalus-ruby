# frozen_string_literal: true

module Dedalus
  module Models
    module Machines
      # @see Dedalus::Resources::Machines::Executions#output
      class ExecutionOutput < Dedalus::Internal::Type::BaseModel
        # @!attribute execution_id
        #
        #   @return [String]
        required :execution_id, String

        # @!attribute stderr
        #
        #   @return [String, nil]
        optional :stderr, String

        # @!attribute stderr_bytes
        #
        #   @return [Integer, nil]
        optional :stderr_bytes, Integer

        # @!attribute stderr_truncated
        #
        #   @return [Boolean, nil]
        optional :stderr_truncated, Dedalus::Internal::Type::Boolean

        # @!attribute stdout
        #
        #   @return [String, nil]
        optional :stdout, String

        # @!attribute stdout_bytes
        #
        #   @return [Integer, nil]
        optional :stdout_bytes, Integer

        # @!attribute stdout_truncated
        #
        #   @return [Boolean, nil]
        optional :stdout_truncated, Dedalus::Internal::Type::Boolean

        # @!method initialize(execution_id:, stderr: nil, stderr_bytes: nil, stderr_truncated: nil, stdout: nil, stdout_bytes: nil, stdout_truncated: nil)
        #   @param execution_id [String]
        #   @param stderr [String]
        #   @param stderr_bytes [Integer]
        #   @param stderr_truncated [Boolean]
        #   @param stdout [String]
        #   @param stdout_bytes [Integer]
        #   @param stdout_truncated [Boolean]
      end
    end
  end
end
