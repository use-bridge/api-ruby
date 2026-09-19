# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[BridgeApi::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

        field :limit, -> { BridgeApi::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

        field :patient_responsibility, -> { BridgeApi::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
      end
    end
  end
end
