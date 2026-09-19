# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServicesListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[BridgeApi::Services::Types::ServicesListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
