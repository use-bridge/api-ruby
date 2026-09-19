# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceGetV1ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits < Internal::Types::Model
        field :minutes, -> { Integer }, optional: false, nullable: false

        field :min, -> { Integer }, optional: false, nullable: false

        field :max, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
