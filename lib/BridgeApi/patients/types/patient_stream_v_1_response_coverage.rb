# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      class PatientStreamV1ResponseCoverage < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :rank, -> { Integer }, optional: false, nullable: false

        field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"
      end
    end
  end
end
