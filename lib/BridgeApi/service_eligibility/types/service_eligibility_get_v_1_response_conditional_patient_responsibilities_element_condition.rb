# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module Types
      class ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementCondition < Internal::Types::Model
        field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
