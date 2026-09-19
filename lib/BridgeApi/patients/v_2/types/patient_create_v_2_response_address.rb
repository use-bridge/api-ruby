# frozen_string_literal: true

module BridgeApi
  module Patients
    module V2
      module Types
        class PatientCreateV2ResponseAddress < Internal::Types::Model
          field :line_1, -> { String }, optional: true, nullable: false, api_name: "line1"

          field :line_2, -> { String }, optional: true, nullable: false, api_name: "line2"

          field :city, -> { String }, optional: true, nullable: false

          field :state, -> { BridgeApi::Patients::V2::Types::PatientCreateV2ResponseAddressFieldState }, optional: false, nullable: false

          field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

          field :country, -> { BridgeApi::Patients::V2::Types::PatientCreateV2ResponseAddressFieldCountry }, optional: true, nullable: false
        end
      end
    end
  end
end
