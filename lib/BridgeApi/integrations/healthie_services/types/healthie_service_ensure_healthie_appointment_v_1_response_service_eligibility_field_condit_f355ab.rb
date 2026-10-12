# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        class HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits < Internal::Types::Model
          field :minutes, -> { Integer }, optional: false, nullable: false

          field :min, -> { Integer }, optional: false, nullable: false

          field :max, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
