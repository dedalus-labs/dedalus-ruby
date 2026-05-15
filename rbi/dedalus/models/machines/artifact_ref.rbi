# typed: strong

module Dedalus
  module Models
    module Machines
      class ArtifactRef < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::ArtifactRef, Dedalus::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :artifact_id

        sig { returns(String) }
        attr_accessor :name

        sig do
          params(artifact_id: String, name: String).returns(T.attached_class)
        end
        def self.new(artifact_id:, name:)
        end

        sig { override.returns({ artifact_id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
