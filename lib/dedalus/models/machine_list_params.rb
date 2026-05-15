# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Machines#list
    class MachineListParams < Dedalus::Internal::Type::BaseModel
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(cursor: nil, limit: nil, request_options: {})
      #   @param cursor [String]
      #   @param limit [Integer]
      #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
