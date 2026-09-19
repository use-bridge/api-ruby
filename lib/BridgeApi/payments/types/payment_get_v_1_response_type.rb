# frozen_string_literal: true

module BridgeApi
  module Payments
    module Types
      module PaymentGetV1ResponseType
        extend BridgeApi::Internal::Types::Enum

        PATIENT = "PATIENT"
        ADJUSTMENT = "ADJUSTMENT"
      end
    end
  end
end
