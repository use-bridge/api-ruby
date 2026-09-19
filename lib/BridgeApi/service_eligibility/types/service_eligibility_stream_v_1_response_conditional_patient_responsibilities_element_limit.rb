# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module Types
      class ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
        field :type, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false

        field :metric, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

        field :period, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

        field :units, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
      end
    end
  end
end
