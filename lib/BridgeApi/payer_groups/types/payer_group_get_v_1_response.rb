# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Types
      class PayerGroupGetV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :slug, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :primary, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :health, -> { BridgeApi::PayerGroups::Types::PayerGroupGetV1ResponseHealth }, optional: true, nullable: false
      end
    end
  end
end
