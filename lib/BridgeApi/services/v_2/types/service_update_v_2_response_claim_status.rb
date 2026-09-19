# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        module ServiceUpdateV2ResponseClaimStatus
          extend BridgeApi::Internal::Types::Enum

          CREATED = "CREATED"
          IN_PROGRESS = "IN_PROGRESS"
          PAID = "PAID"
          DENIED = "DENIED"
        end
      end
    end
  end
end
