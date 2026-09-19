# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module Types
      class ServiceEligibilityStreamV1ResponseConditionalPatientResponsibilitiesElementLimitFieldUnits < Internal::Types::Model
        field :minutes, -> { Integer }, optional: false, nullable: false

        field :min, -> { Integer }, optional: false, nullable: false

        field :max, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
