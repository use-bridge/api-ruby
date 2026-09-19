# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServicesListV1FilterStatusElement
        extend BridgeApi::Internal::Types::Enum

        PENDING = "PENDING"
        BILLING = "BILLING"
        SETTLING = "SETTLING"
        COMPLETE = "COMPLETE"
        TRIAGE = "TRIAGE"
        CANCELED = "CANCELED"
        DENIED = "DENIED"
      end
    end
  end
end
