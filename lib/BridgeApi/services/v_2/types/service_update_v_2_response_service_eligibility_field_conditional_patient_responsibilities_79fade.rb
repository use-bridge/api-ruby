# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceUpdateV2ResponseServiceEligibilityFieldConditionalPatientResponsibilitiesElementLimitFieldUnits < Internal::Types::Model
          field :minutes, -> { Integer }, optional: false, nullable: false

          field :min, -> { Integer }, optional: false, nullable: false

          field :max, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
