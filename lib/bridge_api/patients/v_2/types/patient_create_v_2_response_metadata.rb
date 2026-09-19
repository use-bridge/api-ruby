# frozen_string_literal: true

module Bridge_api
  module Patients
    module V2
      module Types
        class PatientCreateV2ResponseMetadata < Internal::Types::Model
          field :example_key, -> { String }, optional: true, nullable: false, api_name: "exampleKey"
        end
      end
    end
  end
end
