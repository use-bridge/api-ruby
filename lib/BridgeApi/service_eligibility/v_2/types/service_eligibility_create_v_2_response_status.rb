# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module V2
      module Types
        module ServiceEligibilityCreateV2ResponseStatus
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
