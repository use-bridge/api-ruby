# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2ResponseConditionalPatientResponsibility < Internal::Types::Model
          field :conditions, -> { Internal::Types::Array[Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

          field :limit, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

          field :patient_responsibility, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
        end
      end
    end
  end
end
