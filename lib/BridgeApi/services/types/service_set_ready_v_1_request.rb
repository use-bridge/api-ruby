# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceSetReadyV1Request < Internal::Types::Model
        field :ready, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
