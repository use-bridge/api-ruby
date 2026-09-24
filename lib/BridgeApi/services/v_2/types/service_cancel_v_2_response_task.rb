# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCancelV2ResponseTask < Internal::Types::Model
          field :in_review_at, -> { String }, optional: true, nullable: false, api_name: "inReviewAt"

          field :ready, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :type, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponseTasksElementType }, optional: false, nullable: false

          field :memo, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
