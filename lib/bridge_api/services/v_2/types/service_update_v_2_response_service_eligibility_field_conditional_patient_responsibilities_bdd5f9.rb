# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceUpdateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { Bridge_api::Services::V2::Types::ServiceUpdateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { Bridge_api::Services::V2::Types::ServiceUpdateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { Bridge_api::Services::V2::Types::ServiceUpdateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { Bridge_api::Services::V2::Types::ServiceUpdateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
