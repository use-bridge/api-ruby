# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthiePatients
      module Types
        class HealthiePatientEnsureHealthieClientV1Request < Internal::Types::Model
          field :healthie_client_id, -> { String }, optional: false, nullable: false, api_name: "healthieClientId"
        end
      end
    end
  end
end
