# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCancelV2ResponseLocation < Internal::Types::Model
          field :line_1, -> { String }, optional: true, nullable: false, api_name: "line1"

          field :line_2, -> { String }, optional: true, nullable: false, api_name: "line2"

          field :city, -> { String }, optional: true, nullable: false

          field :state, -> { Bridge_api::Services::V2::Types::ServiceCancelV2ResponseLocationFieldState }, optional: false, nullable: false

          field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

          field :country, -> { Bridge_api::Services::V2::Types::ServiceCancelV2ResponseLocationFieldCountry }, optional: true, nullable: false
        end
      end
    end
  end
end
