# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
