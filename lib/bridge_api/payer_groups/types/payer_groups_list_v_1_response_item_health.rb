# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Types
      class PayerGroupsListV1ResponseItemHealth < Internal::Types::Model
        field :status, -> { Bridge_api::PayerGroups::Types::PayerGroupsListV1ResponseItemHealthFieldStatus }, optional: false, nullable: false

        field :last_updated_at, -> { String }, optional: false, nullable: false, api_name: "lastUpdatedAt"
      end
    end
  end
end
