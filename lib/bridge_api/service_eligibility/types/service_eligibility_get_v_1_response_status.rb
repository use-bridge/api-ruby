# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module Types
      module ServiceEligibilityGetV1ResponseStatus
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
