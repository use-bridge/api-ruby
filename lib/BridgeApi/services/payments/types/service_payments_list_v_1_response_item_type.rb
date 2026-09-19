# frozen_string_literal: true

module BridgeApi
  module Services
    module Payments
      module Types
        module ServicePaymentsListV1ResponseItemType
          extend BridgeApi::Internal::Types::Enum

          PATIENT = "PATIENT"
          ADJUSTMENT = "ADJUSTMENT"
        end
      end
    end
  end
end
