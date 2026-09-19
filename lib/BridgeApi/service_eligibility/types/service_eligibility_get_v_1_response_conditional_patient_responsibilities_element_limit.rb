# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module Types
      class ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
        field :type, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false

        field :metric, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

        field :period, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

        field :units, -> { BridgeApi::ServiceEligibility::Types::ServiceEligibilityGetV1ResponseConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
      end
    end
  end
end
