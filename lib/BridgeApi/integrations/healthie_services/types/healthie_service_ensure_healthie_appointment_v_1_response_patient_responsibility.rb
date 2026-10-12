# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        class HealthieServiceEnsureHealthieAppointmentV1ResponsePatientResponsibility < Internal::Types::Model
          field :amount, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

          field :status, -> { BridgeApi::Integrations::HealthieServices::Types::HealthieServiceEnsureHealthieAppointmentV1ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

          field :paid, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
