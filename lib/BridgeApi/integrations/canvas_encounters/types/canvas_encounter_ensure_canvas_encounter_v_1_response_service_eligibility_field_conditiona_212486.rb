# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounters
      module Types
        class CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
