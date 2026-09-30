# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthiePatient
      module Types
        class HealthiePatientGetHealthieClientV1Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :patient_token, -> { String }, optional: true, nullable: false, api_name: "patientToken"

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :coverage, -> { Internal::Types::Array[BridgeApi::Integrations::HealthiePatient::Types::HealthiePatientGetHealthieClientV1ResponseCoverage] }, optional: false, nullable: false

          field :first_name, -> { String }, optional: false, nullable: false, api_name: "firstName"

          field :last_name, -> { String }, optional: false, nullable: false, api_name: "lastName"

          field :date_of_birth, -> { String }, optional: false, nullable: false, api_name: "dateOfBirth"

          field :email, -> { String }, optional: false, nullable: false

          field :phone, -> { String }, optional: true, nullable: false

          field :address, -> { BridgeApi::Integrations::HealthiePatient::Types::HealthiePatientGetHealthieClientV1ResponseAddress }, optional: true, nullable: false

          field :metadata, -> { BridgeApi::Integrations::HealthiePatient::Types::HealthiePatientGetHealthieClientV1ResponseMetadata }, optional: true, nullable: false

          field :account, -> { BridgeApi::Integrations::HealthiePatient::Types::HealthiePatientGetHealthieClientV1ResponseAccount }, optional: true, nullable: false
        end
      end
    end
  end
end
