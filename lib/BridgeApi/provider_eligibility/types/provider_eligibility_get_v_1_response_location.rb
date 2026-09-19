# frozen_string_literal: true

module BridgeApi
  module ProviderEligibility
    module Types
      class ProviderEligibilityGetV1ResponseLocation < Internal::Types::Model
        field :line_1, -> { String }, optional: true, nullable: false, api_name: "line1"

        field :line_2, -> { String }, optional: true, nullable: false, api_name: "line2"

        field :city, -> { String }, optional: true, nullable: false

        field :state, -> { BridgeApi::ProviderEligibility::Types::ProviderEligibilityGetV1ResponseLocationFieldState }, optional: false, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

        field :country, -> { BridgeApi::ProviderEligibility::Types::ProviderEligibilityGetV1ResponseLocationFieldCountry }, optional: true, nullable: false
      end
    end
  end
end
