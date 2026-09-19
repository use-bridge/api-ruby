# frozen_string_literal: true

module Bridge_api
  module Payments
    module Types
      module PaymentsListV1FilterType
        extend Bridge_api::Internal::Types::Enum

        PATIENT = "PATIENT"
        ADJUSTMENT = "ADJUSTMENT"
      end
    end
  end
end
