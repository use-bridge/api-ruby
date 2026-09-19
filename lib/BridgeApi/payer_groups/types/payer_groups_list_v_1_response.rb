# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Types
      class PayerGroupsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[BridgeApi::PayerGroups::Types::PayerGroupsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
