# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module Types
      class ServiceEligibilityStreamV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

        field :validated_at, -> { String }, optional: true, nullable: false, api_name: "validatedAt"

        field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

        field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

        field :status, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseStatus }, optional: false, nullable: false

        field :patient_responsibility, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponsePatientResponsibility }, optional: true, nullable: false, api_name: "patientResponsibility"

        field :providers, -> { Internal::Types::Array[Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseProvider] }, optional: false, nullable: false

        field :policy_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "policyIds"

        field :state, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseState }, optional: false, nullable: false

        field :messages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :clinical_info, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"

        field :conditional_patient_responsibilities, -> { Internal::Types::Array[Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibility] }, optional: true, nullable: false, api_name: "conditionalPatientResponsibilities"
      end
    end
  end
end
