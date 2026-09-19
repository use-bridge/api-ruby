# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceGetV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
        field :type, -> { Bridge_api::Services::Types::ServiceGetV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false

        field :metric, -> { Bridge_api::Services::Types::ServiceGetV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

        field :period, -> { Bridge_api::Services::Types::ServiceGetV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

        field :units, -> { Bridge_api::Services::Types::ServiceGetV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
      end
    end
  end
end
