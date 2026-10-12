# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      module Types
        module HealthieServiceGetHealthieAppointmentV1ResponsePatientResponsibilityFieldStatus
          extend BridgeApi::Internal::Types::Enum

          UNKNOWN = "UNKNOWN"
          ESTIMATE = "ESTIMATE"
          FINALIZED = "FINALIZED"
        end
      end
    end
  end
end
