# frozen_string_literal: true

module Bridge_api
  module Billing
    module Fees
      module Types
        module FeeCreateV1ResponseStatus
          extend Bridge_api::Internal::Types::Enum

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
