# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        class CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
