# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServiceStreamV1ResponsePatientResponsibilityFieldStatus
        extend BridgeApi::Internal::Types::Enum

        UNKNOWN = "UNKNOWN"
        ESTIMATE = "ESTIMATE"
        FINALIZED = "FINALIZED"
      end
    end
  end
end
