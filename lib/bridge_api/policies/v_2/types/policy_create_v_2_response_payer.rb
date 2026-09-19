# frozen_string_literal: true

module Bridge_api
  module Policies
    module V2
      module Types
        class PolicyCreateV2ResponsePayer < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :code, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :member_id, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "memberId"

          field :hint, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
