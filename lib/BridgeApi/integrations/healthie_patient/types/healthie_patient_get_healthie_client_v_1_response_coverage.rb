# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthiePatient
      module Types
        class HealthiePatientGetHealthieClientV1ResponseCoverage < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :rank, -> { Integer }, optional: false, nullable: false

          field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"
        end
      end
    end
  end
end
