# typed: strong

module Dedalus
  module Models
    module Machines
      class SSHConnection < Dedalus::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dedalus::Machines::SSHConnection, Dedalus::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :endpoint

        sig { returns(Integer) }
        attr_accessor :port

        sig { returns(String) }
        attr_accessor :ssh_username

        sig { returns(T.nilable(Dedalus::Machines::SSHHostTrust)) }
        attr_reader :host_trust

        sig { params(host_trust: Dedalus::Machines::SSHHostTrust::OrHash).void }
        attr_writer :host_trust

        sig { returns(T.nilable(String)) }
        attr_reader :user_certificate

        sig { params(user_certificate: String).void }
        attr_writer :user_certificate

        sig do
          params(
            endpoint: String,
            port: Integer,
            ssh_username: String,
            host_trust: Dedalus::Machines::SSHHostTrust::OrHash,
            user_certificate: String
          ).returns(T.attached_class)
        end
        def self.new(
          endpoint:,
          port:,
          ssh_username:,
          host_trust: nil,
          user_certificate: nil
        )
        end

        sig do
          override.returns(
            {
              endpoint: String,
              port: Integer,
              ssh_username: String,
              host_trust: Dedalus::Machines::SSHHostTrust,
              user_certificate: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
