# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        module ServiceCancelV2ResponseServiceEligibilityFieldStatus
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
