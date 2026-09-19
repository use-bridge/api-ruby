# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServiceStreamV1ResponsePatientResponsibilityFieldStatus
        extend Bridge_api::Internal::Types::Enum

        UNKNOWN = "UNKNOWN"
        ESTIMATE = "ESTIMATE"
        FINALIZED = "FINALIZED"
      end
    end
  end
end
