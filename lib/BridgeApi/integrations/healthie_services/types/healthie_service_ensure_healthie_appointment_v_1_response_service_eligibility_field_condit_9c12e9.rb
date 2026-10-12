# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        class HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
          field :conditions, -> { Internal::Types::Array[BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

          field :limit, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

          field :patient_responsibility, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
        end
      end
    end
  end
end
