# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceGetV1ResponseServiceEligibilityFieldClinicalInfo < Internal::Types::Model
        field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
