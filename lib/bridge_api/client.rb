# frozen_string_literal: true

module Bridge_api
  class Client
    # @param base_url [String, nil]
    # @param api_key [String]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(base_url: nil, api_key: ENV.fetch("BRIDGE_API_KEY", nil), max_retries: 2)
      @raw_client = Bridge_api::Internal::Http::RawClient.new(
        base_url: base_url || Bridge_api::Environment::PRODUCTION,
        headers: {
          "User-Agent" => "usebridge-api/0.1.1",
          "X-Fern-Language" => "Ruby",
          "X-API-Key" => api_key.to_s
        },
        max_retries: max_retries
      )
    end

    # @return [Bridge_api::Billing::Client]
    def billing
      @billing ||= Bridge_api::Billing::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::ConsentVersions::Client]
    def consent_versions
      @consent_versions ||= Bridge_api::ConsentVersions::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Consent::Client]
    def consent
      @consent ||= Bridge_api::Consent::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Events::Client]
    def events
      @events ||= Bridge_api::Events::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Notes::Client]
    def notes
      @notes ||= Bridge_api::Notes::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::PatientToken::Client]
    def patient_token
      @patient_token ||= Bridge_api::PatientToken::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Patients::Client]
    def patients
      @patients ||= Bridge_api::Patients::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::PayerGroups::Client]
    def payer_groups
      @payer_groups ||= Bridge_api::PayerGroups::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Payers::Client]
    def payers
      @payers ||= Bridge_api::Payers::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Payments::Client]
    def payments
      @payments ||= Bridge_api::Payments::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Policies::Client]
    def policies
      @policies ||= Bridge_api::Policies::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::ProviderEligibility::Client]
    def provider_eligibility
      @provider_eligibility ||= Bridge_api::ProviderEligibility::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Providers::Client]
    def providers
      @providers ||= Bridge_api::Providers::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Search::Client]
    def search
      @search ||= Bridge_api::Search::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::ServiceEligibility::Client]
    def service_eligibility
      @service_eligibility ||= Bridge_api::ServiceEligibility::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::ServiceTypes::Client]
    def service_types
      @service_types ||= Bridge_api::ServiceTypes::Client.new(client: @raw_client)
    end

    # @return [Bridge_api::Services::Client]
    def services
      @services ||= Bridge_api::Services::Client.new(client: @raw_client)
    end
  end
end
