# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientsListV1ResponseItemCoverage < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :rank, -> { Integer }, optional: false, nullable: false

        field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"
      end
    end
  end
end
