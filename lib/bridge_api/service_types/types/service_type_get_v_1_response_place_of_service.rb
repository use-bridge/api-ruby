# frozen_string_literal: true

module Bridge_api
  module ServiceTypes
    module Types
      module ServiceTypeGetV1ResponsePlaceOfService
        extend Bridge_api::Internal::Types::Enum

        TELEHEALTH_HOME = "TELEHEALTH_HOME"
        TELEHEALTH_NOT_HOME = "TELEHEALTH_NOT_HOME"
        OFFICE = "OFFICE"
      end
    end
  end
end
