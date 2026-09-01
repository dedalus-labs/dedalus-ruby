# typed: strong

module Dedalus
  class Client < Dedalus::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Dedalus API key sent as Authorization Bearer.
    sig { returns(T.nilable(String)) }
    attr_reader :api_key

    # Dedalus API key sent as x-api-key header.
    sig { returns(T.nilable(String)) }
    attr_reader :x_api_key

    # Organization ID header for all DCS requests.
    sig { returns(T.nilable(String)) }
    attr_reader :dedalus_org_id

    sig { returns(Dedalus::Resources::Machines) }
    attr_reader :machines

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def api_key_auth
    end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def bearer_auth
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        x_api_key: T.nilable(String),
        dedalus_org_id: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float,
        idempotency_header: String
      ).returns(T.attached_class)
    end
    def self.new(
      # Dedalus API key sent as Authorization Bearer. Defaults to
      # `ENV["DEDALUS_API_KEY"]`
      api_key: ENV["DEDALUS_API_KEY"],
      # Dedalus API key sent as x-api-key header. Defaults to `ENV["DEDALUS_X_API_KEY"]`
      x_api_key: ENV["DEDALUS_X_API_KEY"],
      # Organization ID header for all DCS requests. Defaults to `ENV["DEDALUS_ORG_ID"]`
      dedalus_org_id: ENV["DEDALUS_ORG_ID"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["DEDALUS_BASE_URL"]`
      base_url: ENV["DEDALUS_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Dedalus::Client::DEFAULT_MAX_RETRIES,
      timeout: Dedalus::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Dedalus::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Dedalus::Client::DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
    end
  end
end
