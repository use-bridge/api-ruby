# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServicesListV1ResponseItemStatus
        extend Bridge_api::Internal::Types::Enum

        PENDING = "PENDING"
        BILLING = "BILLING"
        SETTLING = "SETTLING"
        COMPLETE = "COMPLETE"
        TRIAGE = "TRIAGE"
        CANCELED = "CANCELED"
        DENIED = "DENIED"
      end
    end
  end
end
