# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        module ServiceCreateV2ResponsePatientResponsibilityFieldStatus
          extend Bridge_api::Internal::Types::Enum

          UNKNOWN = "UNKNOWN"
          ESTIMATE = "ESTIMATE"
          FINALIZED = "FINALIZED"
        end
      end
    end
  end
end
