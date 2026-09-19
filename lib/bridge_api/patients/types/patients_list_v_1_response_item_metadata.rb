# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientsListV1ResponseItemMetadata < Internal::Types::Model
        field :example_key, -> { String }, optional: true, nullable: false, api_name: "exampleKey"
      end
    end
  end
end
