# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module Types
      module ServiceEligibilityGetV1ResponseStatus
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
