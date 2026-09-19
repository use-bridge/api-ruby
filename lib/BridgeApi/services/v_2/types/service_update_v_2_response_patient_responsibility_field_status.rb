# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        module ServiceUpdateV2ResponsePatientResponsibilityFieldStatus
          extend BridgeApi::Internal::Types::Enum

          UNKNOWN = "UNKNOWN"
          ESTIMATE = "ESTIMATE"
          FINALIZED = "FINALIZED"
        end
      end
    end
  end
end
