# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
        field :type, -> { Bridge_api::Services::Types::ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false

        field :metric, -> { Bridge_api::Services::Types::ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

        field :period, -> { Bridge_api::Services::Types::ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

        field :units, -> { Bridge_api::Services::Types::ServiceStreamV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
      end
    end
  end
end
