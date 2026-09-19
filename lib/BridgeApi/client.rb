# frozen_string_literal: true

module BridgeApi
  class Client
    # @param base_url [String, nil]
    # @param api_key [String]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(base_url: nil, api_key: ENV.fetch("BRIDGE_API_KEY", nil), max_retries: 2)
      @raw_client = BridgeApi::Internal::Http::RawClient.new(
        base_url: base_url || BridgeApi::Environment::PRODUCTION,
        headers: {
          "User-Agent" => "usebridge-api/0.1.3",
          "X-Fern-Language" => "Ruby",
          "X-API-Key" => api_key.to_s
        },
        max_retries: max_retries
      )
    end

    # @return [BridgeApi::Billing::Client]
    def billing
      @billing ||= BridgeApi::Billing::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::ConsentVersions::Client]
    def consent_versions
      @consent_versions ||= BridgeApi::ConsentVersions::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Consent::Client]
    def consent
      @consent ||= BridgeApi::Consent::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Events::Client]
    def events
      @events ||= BridgeApi::Events::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Notes::Client]
    def notes
      @notes ||= BridgeApi::Notes::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::PatientToken::Client]
    def patient_token
      @patient_token ||= BridgeApi::PatientToken::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Patients::Client]
    def patients
      @patients ||= BridgeApi::Patients::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::PayerGroups::Client]
    def payer_groups
      @payer_groups ||= BridgeApi::PayerGroups::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Payers::Client]
    def payers
      @payers ||= BridgeApi::Payers::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Payments::Client]
    def payments
      @payments ||= BridgeApi::Payments::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Policies::Client]
    def policies
      @policies ||= BridgeApi::Policies::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::ProviderEligibility::Client]
    def provider_eligibility
      @provider_eligibility ||= BridgeApi::ProviderEligibility::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Providers::Client]
    def providers
      @providers ||= BridgeApi::Providers::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Search::Client]
    def search
      @search ||= BridgeApi::Search::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::ServiceEligibility::Client]
    def service_eligibility
      @service_eligibility ||= BridgeApi::ServiceEligibility::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::ServiceTypes::Client]
    def service_types
      @service_types ||= BridgeApi::ServiceTypes::Client.new(client: @raw_client)
    end

    # @return [BridgeApi::Services::Client]
    def services
      @services ||= BridgeApi::Services::Client.new(client: @raw_client)
    end
  end
end
