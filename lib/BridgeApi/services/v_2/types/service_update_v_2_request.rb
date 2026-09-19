# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceUpdateV2Request < Internal::Types::Model
          field :patient_token, -> { String }, optional: true, nullable: false, api_name: "patientToken"

          field :date_of_service, -> { String }, optional: true, nullable: false, api_name: "dateOfService"

          field :service_type_id, -> { String }, optional: true, nullable: false, api_name: "serviceTypeId"

          field :location, -> { BridgeApi::Services::V2::Types::ServiceUpdateV2RequestLocation }, optional: true, nullable: false

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :provider_id, -> { String }, optional: true, nullable: false, api_name: "providerId"

          field :prior_authorization_number, -> { String }, optional: true, nullable: false, api_name: "priorAuthorizationNumber"

          field :responsible_party, -> { BridgeApi::Services::V2::Types::ServiceUpdateV2RequestResponsibleParty }, optional: true, nullable: false, api_name: "responsibleParty"

          field :metadata, -> { BridgeApi::Services::V2::Types::ServiceUpdateV2RequestMetadata }, optional: true, nullable: false
        end
      end
    end
  end
end
