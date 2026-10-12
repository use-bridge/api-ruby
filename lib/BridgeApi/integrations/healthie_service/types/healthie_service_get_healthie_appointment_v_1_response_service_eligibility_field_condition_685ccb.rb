# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      module Types
        class HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
          field :conditions, -> { Internal::Types::Array[BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

          field :limit, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

          field :patient_responsibility, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
        end
      end
    end
  end
end
