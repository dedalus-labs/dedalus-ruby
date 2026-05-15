# frozen_string_literal: true

module Dedalus
  module Models
    # @see Dedalus::Resources::Machines#create
    class MachineCreateParams < Dedalus::Models::CreateParams
      extend Dedalus::Internal::Type::RequestParameters::Converter
      include Dedalus::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Dedalus::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
