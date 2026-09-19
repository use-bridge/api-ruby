# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Types
      module PayerGroupsListV1ResponseItemHealthFieldStatus
        extend Bridge_api::Internal::Types::Enum

        HEALTHY = "HEALTHY"
        WARNING = "WARNING"
        UNHEALTHY = "UNHEALTHY"
      end
    end
  end
end
