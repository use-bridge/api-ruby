# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      module Types
        class HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
