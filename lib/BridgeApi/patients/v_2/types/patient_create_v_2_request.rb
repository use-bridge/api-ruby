# frozen_string_literal: true

module BridgeApi
  module Patients
    module V2
      module Types
        class PatientCreateV2Request < Internal::Types::Model
          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :first_name, -> { String }, optional: false, nullable: false, api_name: "firstName"

          field :last_name, -> { String }, optional: false, nullable: false, api_name: "lastName"

          field :email, -> { String }, optional: false, nullable: false

          field :date_of_birth, -> { String }, optional: false, nullable: false, api_name: "dateOfBirth"

          field :phone, -> { String }, optional: true, nullable: false

          field :address, -> { BridgeApi::Patients::V2::Types::PatientCreateV2RequestAddress }, optional: true, nullable: false

          field :coverage, -> { Internal::Types::Array[BridgeApi::Patients::V2::Types::PatientCreateV2RequestCoverage] }, optional: true, nullable: false

          field :metadata, -> { BridgeApi::Patients::V2::Types::PatientCreateV2RequestMetadata }, optional: true, nullable: false
        end
      end
    end
  end
end
