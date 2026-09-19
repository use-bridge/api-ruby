# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientUpdateV1RequestAddress < Internal::Types::Model
        field :line_1, -> { String }, optional: false, nullable: false, api_name: "line1"

        field :line_2, -> { String }, optional: true, nullable: false, api_name: "line2"

        field :city, -> { String }, optional: false, nullable: false

        field :state, -> { Bridge_api::Patients::Types::PatientUpdateV1RequestAddressFieldState }, optional: false, nullable: false

        field :postal_code, -> { String }, optional: false, nullable: false, api_name: "postalCode"

        field :country, -> { Bridge_api::Patients::Types::PatientUpdateV1RequestAddressFieldCountry }, optional: true, nullable: false
      end
    end
  end
end
