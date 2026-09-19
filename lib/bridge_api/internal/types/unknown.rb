# frozen_string_literal: true

module Bridge_api
  module Internal
    module Types
      module Unknown
        include Bridge_api::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
