# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimit < Internal::Types::Model
          field :type, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldType }, optional: false, nullable: false

          field :value, -> { Integer }, optional: true, nullable: false

          field :metric, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldMetric }, optional: true, nullable: false

          field :period, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldPeriod }, optional: true, nullable: false

          field :units, -> { Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldUnits }, optional: true, nullable: false
        end
      end
    end
  end
end
