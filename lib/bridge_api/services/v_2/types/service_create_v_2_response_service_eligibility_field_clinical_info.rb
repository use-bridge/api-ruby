# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCreateV2ResponseServiceEligibilityFieldClinicalInfo < Internal::Types::Model
          field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
