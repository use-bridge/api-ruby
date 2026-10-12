# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        class HealthieServiceEnsureHealthieAppointmentV1Request < Internal::Types::Model
          field :healthie_appointment_id, -> { String }, optional: false, nullable: false, api_name: "healthieAppointmentId"
        end
      end
    end
  end
end
