# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Types
      class PayerGroupGetV1ResponseHealth < Internal::Types::Model
        field :status, -> { BridgeApi::PayerGroups::Types::PayerGroupGetV1ResponseHealthFieldStatus }, optional: false, nullable: false

        field :last_updated_at, -> { String }, optional: false, nullable: false, api_name: "lastUpdatedAt"
      end
    end
  end
end
