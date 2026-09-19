# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServiceCreateV1ResponseServiceEligibilityFieldStatus
        extend Bridge_api::Internal::Types::Enum

        PENDING = "PENDING"
        UNINSURED = "UNINSURED"
        ELIGIBLE = "ELIGIBLE"
        INELIGIBLE = "INELIGIBLE"
        INEFFECTIVE = "INEFFECTIVE"
      end
    end
  end
end
