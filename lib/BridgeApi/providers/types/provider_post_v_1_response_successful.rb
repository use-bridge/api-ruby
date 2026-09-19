# frozen_string_literal: true

module BridgeApi
  module Providers
    module Types
      class ProviderPostV1ResponseSuccessful < Internal::Types::Model
        field :caqh_id, -> { String }, optional: false, nullable: false, api_name: "caqhId"

        field :credential, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :first_name, -> { String }, optional: false, nullable: false, api_name: "firstName"

        field :last_name, -> { String }, optional: false, nullable: false, api_name: "lastName"

        field :npi, -> { String }, optional: false, nullable: false

        field :provider_id, -> { String }, optional: false, nullable: false, api_name: "providerId"

        field :provider_type, -> { BridgeApi::Providers::Types::ProviderPostV1ResponseSuccessfulElementProviderType }, optional: false, nullable: false, api_name: "providerType"
      end
    end
  end
end
