# frozen_string_literal: true

module Bridge_api
  module PatientToken
    module Types
      class PatientTokenCreateV1Response < Internal::Types::Model
        field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

        field :token, -> { String }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"
      end
    end
  end
end
