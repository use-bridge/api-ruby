# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceCreateV1RequestLocation < Internal::Types::Model
        field :line_1, -> { String }, optional: true, nullable: false, api_name: "line1"

        field :line_2, -> { String }, optional: true, nullable: false, api_name: "line2"

        field :city, -> { String }, optional: true, nullable: false

        field :state, -> { BridgeApi::Services::Types::ServiceCreateV1RequestLocationFieldState }, optional: false, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

        field :country, -> { BridgeApi::Services::Types::ServiceCreateV1RequestLocationFieldCountry }, optional: true, nullable: false
      end
    end
  end
end
