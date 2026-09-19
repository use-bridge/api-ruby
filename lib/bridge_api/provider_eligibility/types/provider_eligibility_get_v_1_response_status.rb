# frozen_string_literal: true

module Bridge_api
  module ProviderEligibility
    module Types
      module ProviderEligibilityGetV1ResponseStatus
        extend Bridge_api::Internal::Types::Enum

        ELIGIBLE = "ELIGIBLE"
        INELIGIBLE = "INELIGIBLE"
      end
    end
  end
end
