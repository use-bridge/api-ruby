# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      class PatientStreamV1ResponseAddress < Internal::Types::Model
        field :line_1, -> { String }, optional: true, nullable: false, api_name: "line1"

        field :line_2, -> { String }, optional: true, nullable: false, api_name: "line2"

        field :city, -> { String }, optional: true, nullable: false

        field :state, -> { BridgeApi::Patients::Types::PatientStreamV1ResponseAddressFieldState }, optional: false, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

        field :country, -> { BridgeApi::Patients::Types::PatientStreamV1ResponseAddressFieldCountry }, optional: true, nullable: false
      end
    end
  end
end
