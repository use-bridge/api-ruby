# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      class PatientUpdateV1Request < Internal::Types::Model
        field :patient_token, -> { String }, optional: true, nullable: false, api_name: "patientToken"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :coverage, -> { Internal::Types::Array[BridgeApi::Patients::Types::PatientUpdateV1RequestCoverage] }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"

        field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"

        field :email, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false, api_name: "dateOfBirth"

        field :phone, -> { String }, optional: true, nullable: false

        field :address, -> { BridgeApi::Patients::Types::PatientUpdateV1RequestAddress }, optional: true, nullable: false

        field :metadata, -> { BridgeApi::Patients::Types::PatientUpdateV1RequestMetadata }, optional: true, nullable: false
      end
    end
  end
end
