# frozen_string_literal: true

module BridgeApi
  module ServiceTypes
    module Types
      module ServiceTypeGetV1ResponsePlaceOfService
        extend BridgeApi::Internal::Types::Enum

        TELEHEALTH_HOME = "TELEHEALTH_HOME"
        TELEHEALTH_NOT_HOME = "TELEHEALTH_NOT_HOME"
        OFFICE = "OFFICE"
      end
    end
  end
end
