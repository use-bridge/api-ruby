# frozen_string_literal: true

module BridgeApi
  module Payments
    module Types
      module PaymentCreateV1ResponseType
        extend BridgeApi::Internal::Types::Enum

        PATIENT = "PATIENT"
        ADJUSTMENT = "ADJUSTMENT"
      end
    end
  end
end
