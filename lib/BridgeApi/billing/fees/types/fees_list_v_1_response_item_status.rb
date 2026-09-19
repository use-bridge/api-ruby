# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      module Types
        module FeesListV1ResponseItemStatus
          extend BridgeApi::Internal::Types::Enum

          PENDING = "PENDING"
          CAPTURING = "CAPTURING"
          PAID = "PAID"
          VOIDED = "VOIDED"
          PARTIALLY_REFUNDED = "PARTIALLY_REFUNDED"
          REFUNDED = "REFUNDED"
        end
      end
    end
  end
end
