# typed: strong

module Dedalus
  module Models
    module Machines
      class ArtifactRetrieveParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::ArtifactRetrieveParams,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :machine_id

        sig { returns(String) }
        attr_accessor :artifact_id

        sig do
          params(
            machine_id: String,
            artifact_id: String,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(machine_id:, artifact_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              machine_id: String,
              artifact_id: String,
              request_options: Dedalus::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
