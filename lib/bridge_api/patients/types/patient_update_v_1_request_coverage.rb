# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientUpdateV1RequestCoverage < Internal::Types::Model
        field :rank, -> { Integer }, optional: true, nullable: false

        field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"
      end
    end
  end
end
