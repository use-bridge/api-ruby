# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceGetV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

        field :status, -> { BridgeApi::Services::Types::ServiceGetV1ResponseStatus }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :service_type, -> { BridgeApi::Services::Types::ServiceGetV1ResponseServiceType }, optional: false, nullable: false, api_name: "serviceType"

        field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

        field :location, -> { BridgeApi::Services::Types::ServiceGetV1ResponseLocation }, optional: false, nullable: false

        field :note_id, -> { String }, optional: true, nullable: false, api_name: "noteId"

        field :service_eligibility, -> { BridgeApi::Services::Types::ServiceGetV1ResponseServiceEligibility }, optional: false, nullable: false, api_name: "serviceEligibility"

        field :coverage_status, -> { BridgeApi::Services::Types::ServiceGetV1ResponseCoverageStatus }, optional: false, nullable: false, api_name: "coverageStatus"

        field :provider, -> { BridgeApi::Services::Types::ServiceGetV1ResponseProvider }, optional: false, nullable: false

        field :payments, -> { Internal::Types::Array[BridgeApi::Services::Types::ServiceGetV1ResponsePayment] }, optional: false, nullable: false

        field :responsible_party, -> { BridgeApi::Services::Types::ServiceGetV1ResponseResponsibleParty }, optional: false, nullable: false, api_name: "responsibleParty"

        field :patient_responsibility, -> { BridgeApi::Services::Types::ServiceGetV1ResponsePatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"

        field :tasks, -> { Internal::Types::Array[BridgeApi::Services::Types::ServiceGetV1ResponseTask] }, optional: false, nullable: false

        field :claim_status, -> { BridgeApi::Services::Types::ServiceGetV1ResponseClaimStatus }, optional: true, nullable: false, api_name: "claimStatus"

        field :prior_authorization_number, -> { String }, optional: true, nullable: false, api_name: "priorAuthorizationNumber"

        field :cancellation_reason, -> { BridgeApi::Services::Types::ServiceGetV1ResponseCancellationReason }, optional: true, nullable: false, api_name: "cancellationReason"

        field :metadata, -> { BridgeApi::Services::Types::ServiceGetV1ResponseMetadata }, optional: true, nullable: false
      end
    end
  end
end
