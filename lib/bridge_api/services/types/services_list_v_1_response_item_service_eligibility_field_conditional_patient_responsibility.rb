# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

        field :limit, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

        field :patient_responsibility, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
      end
    end
  end
end
