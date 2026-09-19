# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

          field :validated_at, -> { String }, optional: true, nullable: false, api_name: "validatedAt"

          field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

          field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

          field :status, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseStatus }, optional: false, nullable: false

          field :patient_responsibility, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponsePatientResponsibility }, optional: true, nullable: false, api_name: "patientResponsibility"

          field :providers, -> { Internal::Types::Array[BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseProvider] }, optional: false, nullable: false

          field :policy_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "policyIds"

          field :state, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseState }, optional: false, nullable: false

          field :messages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

          field :clinical_info, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"

          field :conditional_patient_responsibilities, -> { Internal::Types::Array[BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibility] }, optional: true, nullable: false, api_name: "conditionalPatientResponsibilities"

          field :token, -> { String }, optional: false, nullable: false, api_name: "_token"
        end
      end
    end
  end
end
