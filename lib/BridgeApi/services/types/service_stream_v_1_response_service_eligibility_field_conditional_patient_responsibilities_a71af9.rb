# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition < Internal::Types::Model
        field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
