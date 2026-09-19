# frozen_string_literal: true

module Bridge_api
  module Providers
    module Enrollment
      module Types
        module ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldCommercialFieldStatus
          extend Bridge_api::Internal::Types::Enum

          PENDING = "PENDING"
          SUBMITTED = "SUBMITTED"
          APPROVED = "APPROVED"
          ACTIVE = "ACTIVE"
          DENIED = "DENIED"
          NOT_APPLICABLE = "NOT_APPLICABLE"
        end
      end
    end
  end
end
