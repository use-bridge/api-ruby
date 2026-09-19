# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Types
      class PayerGroupsListV1Request < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
