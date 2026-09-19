# frozen_string_literal: true

module BridgeApi
  module Consent
    module Types
      module PatientConsentCreateV1ResponseStatus
        extend BridgeApi::Internal::Types::Enum

        ACTIVE = "ACTIVE"
        EXPIRING_SOON = "EXPIRING_SOON"
        EXPIRED = "EXPIRED"
      end
    end
  end
end
