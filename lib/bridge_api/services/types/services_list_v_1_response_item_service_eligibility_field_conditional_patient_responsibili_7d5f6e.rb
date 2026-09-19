# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
        field :type, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false

        field :metric, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

        field :period, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

        field :units, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
      end
    end
  end
end
