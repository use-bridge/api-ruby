# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      module Types
        class HealthieServiceGetHealthieAppointmentV1ResponseMetadata < Internal::Types::Model
          field :example_key, -> { String }, optional: true, nullable: false, api_name: "exampleKey"
        end
      end
    end
  end
end
