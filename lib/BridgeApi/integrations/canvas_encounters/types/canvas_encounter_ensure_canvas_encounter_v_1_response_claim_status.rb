# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounters
      module Types
        module CanvasEncounterEnsureCanvasEncounterV1ResponseClaimStatus
          extend BridgeApi::Internal::Types::Enum

          CREATED = "CREATED"
          IN_PROGRESS = "IN_PROGRESS"
          PAID = "PAID"
          DENIED = "DENIED"
        end
      end
    end
  end
end
