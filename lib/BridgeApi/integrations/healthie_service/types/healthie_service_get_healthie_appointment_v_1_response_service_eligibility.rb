# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      module Types
        class HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibility < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

          field :validated_at, -> { String }, optional: true, nullable: false, api_name: "validatedAt"

          field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

          field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

          field :status, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldStatus }, optional: false, nullable: false

          field :patient_responsibility, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldPatientResponsibility }, optional: true, nullable: false, api_name: "patientResponsibility"

          field :providers, -> { Internal::Types::Array[BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldProvider] }, optional: false, nullable: false

          field :policy_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "policyIds"

          field :state, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldState }, optional: false, nullable: false

          field :messages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

          field :clinical_info, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"

          field :conditional_patient_responsibilities, -> { Internal::Types::Array[BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldConditionalPatientResponsibility] }, optional: true, nullable: false, api_name: "conditionalPatientResponsibilities"
        end
      end
    end
  end
end
