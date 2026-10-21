# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasPatients
      module Types
        module CanvasPatientEnsureCanvasPatientV1ResponseAccountFieldStatus
          extend BridgeApi::Internal::Types::Enum

          CURRENT = "CURRENT"
          DUE = "DUE"
          DELINQUENT = "DELINQUENT"
        end
      end
    end
  end
end
