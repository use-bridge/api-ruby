# frozen_string_literal: true

module Bridge_api
  module Patients
    module V2
      module Types
        class PatientGetV2ResponseCoverage < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :rank, -> { Integer }, optional: false, nullable: false

          field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"
        end
      end
    end
  end
end
