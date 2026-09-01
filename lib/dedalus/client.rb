# frozen_string_literal: true

module Dedalus
  class Client < Dedalus::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Dedalus API key sent as Authorization Bearer.
    # @return [String, nil]
    attr_reader :api_key

    # Dedalus API key sent as x-api-key header.
    # @return [String, nil]
    attr_reader :x_api_key

    # Organization ID header for all DCS requests.
    # @return [String, nil]
    attr_reader :dedalus_org_id

    # @return [Dedalus::Resources::Machines]
    attr_reader :machines

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {**api_key_auth, **bearer_auth}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def api_key_auth
      {"x-api-key" => @x_api_key}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def bearer_auth
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Dedalus API key sent as Authorization Bearer. Defaults to
    # `ENV["DEDALUS_API_KEY"]`
    #
    # @param x_api_key [String, nil] Dedalus API key sent as x-api-key header. Defaults to `ENV["DEDALUS_X_API_KEY"]`
    #
    # @param dedalus_org_id [String, nil] Organization ID header for all DCS requests. Defaults to `ENV["DEDALUS_ORG_ID"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["DEDALUS_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    # @param idempotency_header [String]
    def initialize(
      api_key: ENV["DEDALUS_API_KEY"],
      x_api_key: ENV["DEDALUS_X_API_KEY"],
      dedalus_org_id: ENV["DEDALUS_ORG_ID"],
      base_url: ENV["DEDALUS_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
      base_url ||= "https://dcs.dedaluslabs.ai"

      headers = {
        "x-dedalus-org-id" => (@dedalus_org_id = dedalus_org_id&.to_s)
      }
      custom_headers_env = ENV["DEDALUS_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @api_key = api_key&.to_s
      @x_api_key = x_api_key&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers,
        idempotency_header: idempotency_header
      )

      @machines = Dedalus::Resources::Machines.new(client: self)
    end
  end
end
