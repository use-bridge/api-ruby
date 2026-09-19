# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

        field :limit, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

        field :patient_responsibility, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
      end
    end
  end
end
