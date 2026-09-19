# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Types
      class PayerGroupsListV1ResponseItemHealth < Internal::Types::Model
        field :status, -> { BridgeApi::PayerGroups::Types::PayerGroupsListV1ResponseItemHealthFieldStatus }, optional: false, nullable: false

        field :last_updated_at, -> { String }, optional: false, nullable: false, api_name: "lastUpdatedAt"
      end
    end
  end
end
