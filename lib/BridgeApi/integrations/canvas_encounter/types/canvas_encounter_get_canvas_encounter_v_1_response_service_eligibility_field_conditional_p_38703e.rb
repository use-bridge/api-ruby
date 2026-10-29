# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        class CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
          field :conditions, -> { Internal::Types::Array[BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

          field :limit, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

          field :patient_responsibility, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
        end
      end
    end
  end
end
