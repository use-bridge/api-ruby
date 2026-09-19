# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServicesListV1ResponseItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

        field :status, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemStatus }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :service_type, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceType }, optional: false, nullable: false, api_name: "serviceType"

        field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

        field :location, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemLocation }, optional: false, nullable: false

        field :note_id, -> { String }, optional: true, nullable: false, api_name: "noteId"

        field :service_eligibility, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibility }, optional: false, nullable: false, api_name: "serviceEligibility"

        field :coverage_status, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemCoverageStatus }, optional: false, nullable: false, api_name: "coverageStatus"

        field :provider, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemProvider }, optional: false, nullable: false

        field :payments, -> { Internal::Types::Array[Bridge_api::Services::Types::ServicesListV1ResponseItemPayment] }, optional: false, nullable: false

        field :responsible_party, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemResponsibleParty }, optional: false, nullable: false, api_name: "responsibleParty"

        field :patient_responsibility, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"

        field :tasks, -> { Internal::Types::Array[Bridge_api::Services::Types::ServicesListV1ResponseItemTask] }, optional: false, nullable: false

        field :claim_status, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemClaimStatus }, optional: true, nullable: false, api_name: "claimStatus"

        field :prior_authorization_number, -> { String }, optional: true, nullable: false, api_name: "priorAuthorizationNumber"

        field :cancellation_reason, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemCancellationReason }, optional: true, nullable: false, api_name: "cancellationReason"

        field :metadata, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemMetadata }, optional: true, nullable: false
      end
    end
  end
end
