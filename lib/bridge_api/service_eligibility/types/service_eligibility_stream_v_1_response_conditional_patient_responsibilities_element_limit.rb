# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module Types
      class ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
        field :type, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false

        field :metric, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

        field :period, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

        field :units, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
      end
    end
  end
end
