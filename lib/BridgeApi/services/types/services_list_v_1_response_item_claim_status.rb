# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServicesListV1ResponseItemClaimStatus
        extend BridgeApi::Internal::Types::Enum

        CREATED = "CREATED"
        IN_PROGRESS = "IN_PROGRESS"
        PAID = "PAID"
        DENIED = "DENIED"
      end
    end
  end
end
