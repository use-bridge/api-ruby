# frozen_string_literal: true

module BridgeApi
  module Policies
    module V2
      module Types
        class PolicyCreateV2ResponseLatest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :plan, -> { String }, optional: false, nullable: false

          field :validated_at, -> { String }, optional: false, nullable: false, api_name: "validatedAt"

          field :effective_from, -> { String }, optional: true, nullable: false, api_name: "effectiveFrom"

          field :effective_to, -> { String }, optional: true, nullable: false, api_name: "effectiveTo"
        end
      end
    end
  end
end
