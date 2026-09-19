# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServicesListV1ResponseItemServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits < Internal::Types::Model
        field :minutes, -> { Integer }, optional: false, nullable: false

        field :min, -> { Integer }, optional: false, nullable: false

        field :max, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
