# frozen_string_literal: true

module BridgeApi
  module PayerGroups
    module Health
      module Types
        class HealthEventsListV1Request < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :order_event_at, -> { BridgeApi::PayerGroups::Health::Types::HealthEventsListV1OrderEventAt }, optional: true, nullable: false, api_name: "order.eventAt"

          field :page, -> { Integer }, optional: true, nullable: false

          field :limit, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
