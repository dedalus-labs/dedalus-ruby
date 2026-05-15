# typed: strong

module Dedalus
  module Models
    module Machines
      class TerminalListParams < Dedalus::Internal::Type::BaseModel
        extend Dedalus::Internal::Type::RequestParameters::Converter
        include Dedalus::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dedalus::Machines::TerminalListParams,
              Dedalus::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :machine_id

        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            machine_id: String,
            cursor: String,
            limit: Integer,
            request_options: Dedalus::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(machine_id:, cursor: nil, limit: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              machine_id: String,
              cursor: String,
              limit: Integer,
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
