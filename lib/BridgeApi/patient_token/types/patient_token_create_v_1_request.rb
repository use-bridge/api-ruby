# frozen_string_literal: true

module BridgeApi
  module PatientToken
    module Types
      class PatientTokenCreateV1Request < Internal::Types::Model
        field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"
      end
    end
  end
end
