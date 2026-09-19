# frozen_string_literal: true

module BridgeApi
  module Patients
    module V2
      module Types
        class PatientCreateV2RequestAddress < Internal::Types::Model
          field :line_1, -> { String }, optional: false, nullable: false, api_name: "line1"

          field :line_2, -> { String }, optional: true, nullable: false, api_name: "line2"

          field :city, -> { String }, optional: false, nullable: false

          field :state, -> { BridgeApi::Patients::V2::Types::PatientCreateV2RequestAddressFieldState }, optional: false, nullable: false

          field :postal_code, -> { String }, optional: false, nullable: false, api_name: "postalCode"

          field :country, -> { BridgeApi::Patients::V2::Types::PatientCreateV2RequestAddressFieldCountry }, optional: true, nullable: false
        end
      end
    end
  end
end
