# frozen_string_literal: true

module Bridge_api
  module Policies
    module Types
      module PolicyStreamV1ResponseStatus
        extend Bridge_api::Internal::Types::Enum

        PENDING = "PENDING"
        UNKNOWN = "UNKNOWN"
        CONFIRMED = "CONFIRMED"
        REVALIDATING = "REVALIDATING"
        INVALID = "INVALID"
      end
    end
  end
end
