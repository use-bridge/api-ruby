# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        class CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition < Internal::Types::Model
          field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
