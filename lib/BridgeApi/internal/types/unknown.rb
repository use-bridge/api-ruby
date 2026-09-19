# frozen_string_literal: true

module BridgeApi
  module Internal
    module Types
      module Unknown
        include BridgeApi::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
