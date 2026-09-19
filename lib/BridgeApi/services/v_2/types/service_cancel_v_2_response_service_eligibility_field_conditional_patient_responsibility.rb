# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibility < Internal::Types::Model
          field :conditions, -> { Internal::Types::Array[BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementCondition] }, optional: false, nullable: false

          field :limit, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit }, optional: false, nullable: false

          field :patient_responsibility, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementPatientResponsibility }, optional: false, nullable: false, api_name: "patientResponsibility"
        end
      end
    end
  end
end
