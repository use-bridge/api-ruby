# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServicesListV1ResponseItemClaimStatus
        extend Bridge_api::Internal::Types::Enum

        CREATED = "CREATED"
        IN_PROGRESS = "IN_PROGRESS"
        PAID = "PAID"
        DENIED = "DENIED"
      end
    end
  end
end
