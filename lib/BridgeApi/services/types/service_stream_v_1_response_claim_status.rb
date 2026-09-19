# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServiceStreamV1ResponseClaimStatus
        extend BridgeApi::Internal::Types::Enum

        CREATED = "CREATED"
        IN_PROGRESS = "IN_PROGRESS"
        PAID = "PAID"
        DENIED = "DENIED"
      end
    end
  end
end
