# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCreateV2ResponseProvider < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :type, -> { BridgeApi::Services::V2::Types::ServiceCreateV2ResponseProviderFieldType }, optional: false, nullable: false

          field :provider_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "providerEligibilityEnabled"

          field :service_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "serviceEligibilityEnabled"

          field :npi, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
