# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServicesListV1ResponseItemServiceEligibilityFieldProvider < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :type, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldProvidersElementType }, optional: false, nullable: false

        field :provider_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "providerEligibilityEnabled"

        field :service_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "serviceEligibilityEnabled"

        field :npi, -> { String }, optional: false, nullable: false
      end
    end
  end
end
