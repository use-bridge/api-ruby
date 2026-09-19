# frozen_string_literal: true

module BridgeApi
  module Providers
    module Types
      class ProviderPostV1Response < Internal::Types::Model
        field :failed, -> { Internal::Types::Array[BridgeApi::Providers::Types::ProviderPostV1ResponseFailed] }, optional: false, nullable: false

        field :successful, -> { Internal::Types::Array[BridgeApi::Providers::Types::ProviderPostV1ResponseSuccessful] }, optional: false, nullable: false
      end
    end
  end
end
