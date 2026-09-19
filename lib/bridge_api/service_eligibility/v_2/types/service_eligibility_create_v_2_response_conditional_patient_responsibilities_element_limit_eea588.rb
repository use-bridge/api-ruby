# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2ResponseConditionalPatientResponsibilitiesElementLimitFieldUnits < Internal::Types::Model
          field :minutes, -> { Integer }, optional: false, nullable: false

          field :min, -> { Integer }, optional: false, nullable: false

          field :max, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
