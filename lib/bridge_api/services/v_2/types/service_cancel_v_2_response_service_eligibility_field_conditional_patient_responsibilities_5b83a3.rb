# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { Bridge_api::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { Bridge_api::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { Bridge_api::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { Bridge_api::Services::V2::Types::ServiceCancelV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
