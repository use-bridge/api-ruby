# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceCreateV1Request < Internal::Types::Model
        field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

        field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

        field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :location, -> { BridgeApi::Services::Types::ServiceCreateV1RequestLocation }, optional: false, nullable: false

        field :provider_id, -> { String }, optional: false, nullable: false, api_name: "providerId"

        field :service_eligibility, -> { BridgeApi::Services::Types::ServiceCreateV1RequestServiceEligibility }, optional: true, nullable: false, api_name: "serviceEligibility"

        field :prior_authorization_number, -> { String }, optional: true, nullable: false, api_name: "priorAuthorizationNumber"

        field :metadata, -> { BridgeApi::Services::Types::ServiceCreateV1RequestMetadata }, optional: true, nullable: false

        field :responsible_party, -> { BridgeApi::Services::Types::ServiceCreateV1RequestResponsibleParty }, optional: true, nullable: false, api_name: "responsibleParty"
      end
    end
  end
end
