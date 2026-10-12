# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      module Types
        class HealthieServiceGetHealthieAppointmentV1ResponsePatientResponsibility < Internal::Types::Model
          field :amount, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

          field :status, -> { BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

          field :paid, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
