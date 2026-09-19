# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientUpdateV1RequestMetadata < Internal::Types::Model
        field :example_key, -> { String }, optional: true, nullable: false, api_name: "exampleKey"
      end
    end
  end
end
