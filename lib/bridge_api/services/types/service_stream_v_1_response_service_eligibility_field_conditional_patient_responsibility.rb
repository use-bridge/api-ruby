# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Bridge_api::Services::Types::ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

        field :limit, -> { Bridge_api::Services::Types::ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

        field :patient_responsibility, -> { Bridge_api::Services::Types::ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
      end
    end
  end
end
