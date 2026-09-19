# frozen_string_literal: true

module BridgeApi
  module Providers
    module Types
      class ProviderPostV1RequestProvider < Internal::Types::Model
        field :npi, -> { String }, optional: false, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :caqh_id, -> { String }, optional: false, nullable: false, api_name: "caqhId"

        field :caqh_username, -> { String }, optional: false, nullable: false, api_name: "caqhUsername"

        field :caqh_password, -> { String }, optional: false, nullable: false, api_name: "caqhPassword"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"
      end
    end
  end
end
