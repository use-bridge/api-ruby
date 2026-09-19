# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Health
      module Types
        class HealthEventsListV1Request < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :order_event_at, -> { Bridge_api::PayerGroups::Health::Types::HealthEventsListV1OrderEventAt }, optional: true, nullable: false, api_name: "order.eventAt"

          field :page, -> { Integer }, optional: true, nullable: false

          field :limit, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
