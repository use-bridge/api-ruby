# frozen_string_literal: true

module BridgeApi
  module Policies
    module Types
      module PolicyStreamV1ResponseStatus
        extend BridgeApi::Internal::Types::Enum

        PENDING = "PENDING"
        UNKNOWN = "UNKNOWN"
        CONFIRMED = "CONFIRMED"
        REVALIDATING = "REVALIDATING"
        INVALID = "INVALID"
      end
    end
  end
end
