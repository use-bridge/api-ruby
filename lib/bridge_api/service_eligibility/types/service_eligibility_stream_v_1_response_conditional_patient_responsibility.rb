# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module Types
      class ServiceEligibilityStreamV1ResponseConditionalPatientResponsibility < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

        field :limit, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

        field :patient_responsibility, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
      end
    end
  end
end
