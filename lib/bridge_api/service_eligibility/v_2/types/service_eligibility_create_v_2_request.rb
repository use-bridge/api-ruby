# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2Request < Internal::Types::Model
          field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

          field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

          field :policy_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "policyIds"

          field :state, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2RequestState }, optional: false, nullable: false

          field :clinical_info, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2RequestClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"
        end
      end
    end
  end
end
