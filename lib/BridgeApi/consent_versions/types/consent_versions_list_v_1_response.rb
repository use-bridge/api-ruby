# frozen_string_literal: true

module BridgeApi
  module ConsentVersions
    module Types
      class ConsentVersionsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[BridgeApi::ConsentVersions::Types::ConsentVersionsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
