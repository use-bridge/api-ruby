# frozen_string_literal: true

module Bridge_api
  module Policies
    module V2
      module Types
        module PolicyCreateV2ResponseStatus
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
end
