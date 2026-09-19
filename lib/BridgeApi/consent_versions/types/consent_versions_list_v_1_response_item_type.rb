# frozen_string_literal: true

module BridgeApi
  module ConsentVersions
    module Types
      module ConsentVersionsListV1ResponseItemType
        extend BridgeApi::Internal::Types::Enum

        ASSIGNMENT_OF_BENEFITS = "ASSIGNMENT_OF_BENEFITS"
        CONSENT_TO_TREAT = "CONSENT_TO_TREAT"
        PRIVACY_NOTICE = "PRIVACY_NOTICE"
        SMA_GROUP_CONFIDENTIALITY_AGREEMENT = "SMA_GROUP_CONFIDENTIALITY_AGREEMENT"
      end
    end
  end
end
