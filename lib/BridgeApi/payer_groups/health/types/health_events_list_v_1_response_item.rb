# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Health
      module Types
        class HealthEventsListV1ResponseItem < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :status, -> { BridgeApi::PayerGroups::Health::Types::HealthEventsListV1ResponseItemStatus }, optional: false, nullable: false

          field :previous_status, -> { BridgeApi::PayerGroups::Health::Types::HealthEventsListV1ResponseItemPreviousStatus }, optional: true, nullable: false, api_name: "previousStatus"

          field :event_at, -> { String }, optional: false, nullable: false, api_name: "eventAt"
        end
      end
    end
  end
end
