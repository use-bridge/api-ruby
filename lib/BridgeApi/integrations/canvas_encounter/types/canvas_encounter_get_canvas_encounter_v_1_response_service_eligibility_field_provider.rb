# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        class CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldProvider < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :type, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldProvidersElementType }, optional: false, nullable: false

          field :provider_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "providerEligibilityEnabled"

          field :service_eligibility_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "serviceEligibilityEnabled"

          field :npi, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
