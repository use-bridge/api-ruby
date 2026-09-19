# frozen_string_literal: true

module BridgeApi
  module Billing
    module EstimateCharges
      module Types
        module EstimateChargeCaptureStripeV1ResponseStatus
          extend BridgeApi::Internal::Types::Enum

          PENDING = "PENDING"
          AUTHORIZING = "AUTHORIZING"
          AUTHORIZED = "AUTHORIZED"
          AUTHORIZATION_FAILED = "AUTHORIZATION_FAILED"
          AUTHORIZATION_EXPIRED = "AUTHORIZATION_EXPIRED"
          AUTHORIZATION_RELEASING = "AUTHORIZATION_RELEASING"
          AUTHORIZATION_CANCELLED = "AUTHORIZATION_CANCELLED"
          CAPTURING = "CAPTURING"
          CAPTURED = "CAPTURED"
          CAPTURED_BALANCE_REMAINING = "CAPTURED_BALANCE_REMAINING"
          CAPTURE_FAILED = "CAPTURE_FAILED"
          REFUNDING = "REFUNDING"
          REFUNDED = "REFUNDED"
          REFUND_FAILED = "REFUND_FAILED"
          REFUNDED_BALANCE_REMAINING = "REFUNDED_BALANCE_REMAINING"
          NO_CHARGE = "NO_CHARGE"
        end
      end
    end
  end
end
