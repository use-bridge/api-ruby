# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCreateV2ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
          field :conditions, -> { Internal::Types::Array[Bridge_api::Services::V2::Types::ServiceCreateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

          field :limit, -> { Bridge_api::Services::V2::Types::ServiceCreateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

          field :patient_responsibility, -> { Bridge_api::Services::V2::Types::ServiceCreateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
        end
      end
    end
  end
end
