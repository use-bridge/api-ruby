# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        class HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition < Internal::Types::Model
          field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
