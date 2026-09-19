# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceGetV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition < Internal::Types::Model
        field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
