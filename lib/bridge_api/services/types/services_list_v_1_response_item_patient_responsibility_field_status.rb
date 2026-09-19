# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServicesListV1ResponseItemPatientResponsibilityFieldStatus
        extend Bridge_api::Internal::Types::Enum

        UNKNOWN = "UNKNOWN"
        ESTIMATE = "ESTIMATE"
        FINALIZED = "FINALIZED"
      end
    end
  end
end
