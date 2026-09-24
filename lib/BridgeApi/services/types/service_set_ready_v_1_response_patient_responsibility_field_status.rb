# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServiceSetReadyV1ResponsePatientResponsibilityFieldStatus
        extend BridgeApi::Internal::Types::Enum

        UNKNOWN = "UNKNOWN"
        ESTIMATE = "ESTIMATE"
        FINALIZED = "FINALIZED"
      end
    end
  end
end
