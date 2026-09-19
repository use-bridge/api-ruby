# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Types
      class PayerGroupsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::PayerGroups::Types::PayerGroupsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
