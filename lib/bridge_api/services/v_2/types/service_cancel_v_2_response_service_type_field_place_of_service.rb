# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        module ServiceCancelV2ResponseServiceTypeFieldPlaceOfService
          extend Bridge_api::Internal::Types::Enum

          TELEHEALTH_HOME = "TELEHEALTH_HOME"
          TELEHEALTH_NOT_HOME = "TELEHEALTH_NOT_HOME"
          OFFICE = "OFFICE"
        end
      end
    end
  end
end
