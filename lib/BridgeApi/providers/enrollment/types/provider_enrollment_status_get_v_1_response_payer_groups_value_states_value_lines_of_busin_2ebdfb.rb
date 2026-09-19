# frozen_string_literal: true

module BridgeApi
  module Providers
    module Enrollment
      module Types
        module ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldCommercialFieldStatus
          extend BridgeApi::Internal::Types::Enum

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
