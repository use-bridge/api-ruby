# frozen_string_literal: true

module BridgeApi
  module Patients
    module V2
      module Types
        class PatientCreateV2RequestCoverage < Internal::Types::Model
          field :rank, -> { Integer }, optional: true, nullable: false

          field :policy_id, -> { String }, optional: false, nullable: false, api_name: "policyId"
        end
      end
    end
  end
end
