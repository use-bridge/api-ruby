# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        class HealthieServiceEnsureHealthieAppointmentV1Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

          field :status, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseStatus }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :service_type, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceType }, optional: false, nullable: false, api_name: "serviceType"

          field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :location, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseLocation }, optional: false, nullable: false

          field :note_id, -> { String }, optional: true, nullable: false, api_name: "noteId"

          field :service_eligibility, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseServiceEligibility }, optional: false, nullable: false, api_name: "serviceEligibility"

          field :coverage_status, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseCoverageStatus }, optional: false, nullable: false, api_name: "coverageStatus"

          field :provider, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseProvider }, optional: false, nullable: false

          field :payments, -> { Internal::Types::Array[BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponsePayment] }, optional: false, nullable: false

          field :responsible_party, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseResponsibleParty }, optional: false, nullable: false, api_name: "responsibleParty"

          field :patient_responsibility, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponsePatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"

          field :tasks, -> { Internal::Types::Array[BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseTask] }, optional: false, nullable: false

          field :claim_status, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseClaimStatus }, optional: true, nullable: false, api_name: "claimStatus"

          field :prior_authorization_number, -> { String }, optional: true, nullable: false, api_name: "priorAuthorizationNumber"

          field :cancellation_reason, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseCancellationReason }, optional: true, nullable: false, api_name: "cancellationReason"

          field :metadata, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponseMetadata }, optional: true, nullable: false
        end
      end
    end
  end
end
