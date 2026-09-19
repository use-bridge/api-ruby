# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServicesListV1ResponseItemServiceEligibilityFieldStatus
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
