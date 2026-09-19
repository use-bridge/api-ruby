# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Bridge_api::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

        field :limit, -> { Bridge_api::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

        field :patient_responsibility, -> { Bridge_api::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
      end
    end
  end
end
