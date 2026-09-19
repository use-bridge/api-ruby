# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Types
      module PayerGroupGetV1ResponseHealthFieldStatus
        extend BridgeApi::Internal::Types::Enum

        HEALTHY = "HEALTHY"
        WARNING = "WARNING"
        UNHEALTHY = "UNHEALTHY"
      end
    end
  end
end
