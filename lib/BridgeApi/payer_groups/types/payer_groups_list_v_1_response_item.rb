# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Types
      class PayerGroupsListV1ResponseItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :slug, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :primary, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :health, -> { BridgeApi::PayerGroups::Types::PayerGroupsListV1ResponseItemHealth }, optional: true, nullable: false
      end
    end
  end
end
