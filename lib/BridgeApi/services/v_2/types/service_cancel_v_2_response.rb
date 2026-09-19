# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCancelV2Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

          field :status, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseStatus }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :service_type, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceType }, optional: false, nullable: false, api_name: "serviceType"

          field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :location, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseLocation }, optional: false, nullable: false

          field :note_id, -> { String }, optional: true, nullable: false, api_name: "noteId"

          field :service_eligibility, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibility }, optional: false, nullable: false, api_name: "serviceEligibility"

          field :coverage_status, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseCoverageStatus }, optional: false, nullable: false, api_name: "coverageStatus"

          field :provider, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseProvider }, optional: false, nullable: false

          field :payments, -> { Internal::Types::Array[BridgeApi::Services::V2::Types::ServiceCancelV2ResponsePayment] }, optional: false, nullable: false

          field :responsible_party, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseResponsibleParty }, optional: false, nullable: false, api_name: "responsibleParty"

          field :patient_responsibility, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponsePatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"

          field :tasks, -> { Internal::Types::Array[BridgeApi::Services::V2::Types::ServiceCancelV2ResponseTask] }, optional: false, nullable: false

          field :claim_status, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseClaimStatus }, optional: true, nullable: false, api_name: "claimStatus"

          field :prior_authorization_number, -> { String }, optional: true, nullable: false, api_name: "priorAuthorizationNumber"

          field :cancellation_reason, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseCancellationReason }, optional: true, nullable: false, api_name: "cancellationReason"

          field :metadata, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseMetadata }, optional: true, nullable: false
        end
      end
    end
  end
end
