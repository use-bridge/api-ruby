# frozen_string_literal: true

module Bridge_api
  module Services
    module Payments
      module Types
        module ServicePaymentsListV1ResponseItemType
          extend Bridge_api::Internal::Types::Enum

          PATIENT = "PATIENT"
          ADJUSTMENT = "ADJUSTMENT"
        end
      end
    end
  end
end
