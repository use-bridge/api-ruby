# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      module Types
        class HealthieServiceGetHealthieAppointmentV1ResponseServiceEligibilityFieldClinicalInfo < Internal::Types::Model
          field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
