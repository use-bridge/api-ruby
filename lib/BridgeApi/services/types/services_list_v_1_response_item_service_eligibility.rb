# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServicesListV1ResponseItemServiceEligibility < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :organization_id, -> { String }, optional: false, nullable: false, api_name: "organizationId"

        field :validated_at, -> { String }, optional: true, nullable: false, api_name: "validatedAt"

        field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

        field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

        field :status, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldStatus }, optional: false, nullable: false

        field :patient_responsibility, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldPatientResponsibility }, optional: true, nullable: false, api_name: "patientResponsibility"

        field :providers, -> { Internal::Types::Array[BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldProvider] }, optional: false, nullable: false

        field :policy_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "policyIds"

        field :state, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldState }, optional: false, nullable: false

        field :messages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :clinical_info, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"

        field :conditional_patient_responsibilities, -> { Internal::Types::Array[BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibility] }, optional: true, nullable: false, api_name: "conditionalPatientResponsibilities"
      end
    end
  end
end
