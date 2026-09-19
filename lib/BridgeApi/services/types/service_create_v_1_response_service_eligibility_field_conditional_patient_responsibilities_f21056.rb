# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
        field :type, -> { BridgeApi::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false

        field :metric, -> { BridgeApi::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

        field :period, -> { BridgeApi::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

        field :units, -> { BridgeApi::Services::Types::ServiceCreateV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
      end
    end
  end
end
