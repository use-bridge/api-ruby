# frozen_string_literal: true

module BridgeApi
  module Payments
    module Types
      module PaymentsListV1FilterType
        extend BridgeApi::Internal::Types::Enum

        PATIENT = "PATIENT"
        ADJUSTMENT = "ADJUSTMENT"
      end
    end
  end
end
