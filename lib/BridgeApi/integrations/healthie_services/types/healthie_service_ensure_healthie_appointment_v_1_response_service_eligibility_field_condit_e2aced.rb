# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        class HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
