# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { BridgeApi::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
