# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounters
      module Types
        class CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
          field :conditions, -> { Internal::Types::Array[BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

          field :limit, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

          field :patient_responsibility, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
        end
      end
    end
  end
end
