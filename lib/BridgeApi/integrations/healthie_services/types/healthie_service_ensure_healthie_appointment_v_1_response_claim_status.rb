# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        module HealthieServiceEnsureHealthieAppointmentV1ResponseClaimStatus
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
