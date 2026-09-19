# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Health
      module Types
        module HealthEventsListV1ResponseItemStatus
          extend Bridge_api::Internal::Types::Enum

          HEALTHY = "HEALTHY"
          WARNING = "WARNING"
          UNHEALTHY = "UNHEALTHY"
        end
      end
    end
  end
end
