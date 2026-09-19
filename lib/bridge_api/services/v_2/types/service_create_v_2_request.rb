# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCreateV2Request < Internal::Types::Model
          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

          field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :location, -> { Bridge_api::Services::V2::Types::ServiceCreateV2RequestLocation }, optional: false, nullable: false

          field :provider_id, -> { String }, optional: false, nullable: false, api_name: "providerId"

          field :service_eligibility, -> { Bridge_api::Services::V2::Types::ServiceCreateV2RequestServiceEligibility }, optional: true, nullable: false, api_name: "serviceEligibility"

          field :prior_authorization_number, -> { String }, optional: true, nullable: false, api_name: "priorAuthorizationNumber"

          field :metadata, -> { Bridge_api::Services::V2::Types::ServiceCreateV2RequestMetadata }, optional: true, nullable: false

          field :responsible_party, -> { Bridge_api::Services::V2::Types::ServiceCreateV2RequestResponsibleParty }, optional: true, nullable: false, api_name: "responsibleParty"
        end
      end
    end
  end
end
