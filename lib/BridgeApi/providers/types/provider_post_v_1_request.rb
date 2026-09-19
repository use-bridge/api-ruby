# frozen_string_literal: true

module BridgeApi
  module Providers
    module Types
      class ProviderPostV1Request < Internal::Types::Model
        field :providers, -> { Internal::Types::Array[BridgeApi::Providers::Types::ProviderPostV1RequestProvider] }, optional: false, nullable: false
      end
    end
  end
end
