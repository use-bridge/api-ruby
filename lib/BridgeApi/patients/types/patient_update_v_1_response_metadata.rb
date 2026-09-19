# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      class PatientUpdateV1ResponseMetadata < Internal::Types::Model
        field :example_key, -> { String }, optional: true, nullable: false, api_name: "exampleKey"
      end
    end
  end
end
