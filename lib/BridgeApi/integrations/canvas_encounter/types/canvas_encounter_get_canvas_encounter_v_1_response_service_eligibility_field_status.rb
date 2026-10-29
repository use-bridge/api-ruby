# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        module CanvasEncounterGetCanvasEncounterV1ResponseServiceEligibilityFieldStatus
          extend BridgeApi::Internal::Types::Enum

          PENDING = "PENDING"
          UNINSURED = "UNINSURED"
          ELIGIBLE = "ELIGIBLE"
          INELIGIBLE = "INELIGIBLE"
          INEFFECTIVE = "INEFFECTIVE"
        end
      end
    end
  end
end
