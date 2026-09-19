# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServiceGetV1ResponseServiceTypeFieldPlaceOfService
        extend BridgeApi::Internal::Types::Enum

        TELEHEALTH_HOME = "TELEHEALTH_HOME"
        TELEHEALTH_NOT_HOME = "TELEHEALTH_NOT_HOME"
        OFFICE = "OFFICE"
      end
    end
  end
end
