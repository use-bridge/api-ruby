# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceStreamV1ResponseServiceEligibilityFieldClinicalInfo < Internal::Types::Model
        field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
