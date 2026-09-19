# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServiceGetV1ResponseServiceEligibilityFieldStatus
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
