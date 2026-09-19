# frozen_string_literal: true

module BridgeApi
  module ProviderEligibility
    module Types
      class ProviderEligibilityGetV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :validated_at, -> { String }, optional: false, nullable: false, api_name: "validatedAt"

        field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

        field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

        field :location, -> { BridgeApi::ProviderEligibility::Types::ProviderEligibilityGetV1ResponseLocation }, optional: false, nullable: false

        field :payer_id, -> { String }, optional: false, nullable: false, api_name: "payerId"

        field :status, -> { BridgeApi::ProviderEligibility::Types::ProviderEligibilityGetV1ResponseStatus }, optional: false, nullable: false

        field :providers, -> { Internal::Types::Array[BridgeApi::ProviderEligibility::Types::ProviderEligibilityGetV1ResponseProvider] }, optional: false, nullable: false
      end
    end
  end
end
