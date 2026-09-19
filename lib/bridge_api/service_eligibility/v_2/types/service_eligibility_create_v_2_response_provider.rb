# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2ResponseProvider < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :type, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseProvidersElementType }, optional: false, nullable: false

          field :provider_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "providerEligibilityEnabled"

          field :service_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "serviceEligibilityEnabled"

          field :npi, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
