# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        module CanvasEncounterGetCanvasEncounterV1ResponseStatus
          extend BridgeApi::Internal::Types::Enum

          PENDING = "PENDING"
          BILLING = "BILLING"
          SETTLING = "SETTLING"
          COMPLETE = "COMPLETE"
          TRIAGE = "TRIAGE"
          CANCELED = "CANCELED"
          DENIED = "DENIED"
        end
      end
    end
  end
end
