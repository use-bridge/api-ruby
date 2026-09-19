# frozen_string_literal: true

module Bridge_api
  module Consent
    module Types
      module PatientConsentsListV1ResponseItemStatus
        extend Bridge_api::Internal::Types::Enum

        ACTIVE = "ACTIVE"
        EXPIRING_SOON = "EXPIRING_SOON"
        EXPIRED = "EXPIRED"
      end
    end
  end
end
