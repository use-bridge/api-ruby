# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Health
      module Types
        module HealthEventsListV1ResponseItemStatus
          extend BridgeApi::Internal::Types::Enum

          HEALTHY = "HEALTHY"
          WARNING = "WARNING"
          UNHEALTHY = "UNHEALTHY"
        end
      end
    end
  end
end
