# frozen_string_literal: true

module BridgeApi
  module Providers
    module Types
      class ProvidersListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[BridgeApi::Providers::Types::ProvidersListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
