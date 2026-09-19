# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module Types
      class ServiceEligibilityGetV1ResponseConditionalPatientResponsibility < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Bridge_api::ServiceEligibility::Types::ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

        field :limit, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

        field :patient_responsibility, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
      end
    end
  end
end
