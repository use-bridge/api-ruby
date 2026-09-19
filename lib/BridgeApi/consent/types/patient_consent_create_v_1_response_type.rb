# frozen_string_literal: true

module BridgeApi
  module Consent
    module Types
      module PatientConsentCreateV1ResponseType
        extend BridgeApi::Internal::Types::Enum

        ASSIGNMENT_OF_BENEFITS = "ASSIGNMENT_OF_BENEFITS"
        CONSENT_TO_TREAT = "CONSENT_TO_TREAT"
        PRIVACY_NOTICE = "PRIVACY_NOTICE"
        SMA_GROUP_CONFIDENTIALITY_AGREEMENT = "SMA_GROUP_CONFIDENTIALITY_AGREEMENT"
      end
    end
  end
end
