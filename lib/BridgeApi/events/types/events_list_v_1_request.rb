# frozen_string_literal: true

module BridgeApi
  module Events
    module Types
      class EventsListV1Request < Internal::Types::Model
        field :filter_event_type, -> { String }, optional: true, nullable: false, api_name: "filter.eventType"

        field :filter_object_type, -> { String }, optional: true, nullable: false, api_name: "filter.objectType"

        field :filter_object_id, -> { String }, optional: true, nullable: false, api_name: "filter.objectId"

        field :order_created_at, -> { BridgeApi::Events::Types::EventsListV1OrderCreatedAt }, optional: true, nullable: false, api_name: "order.createdAt"

        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
