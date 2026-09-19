# frozen_string_literal: true

module BridgeApi
  module Events
    module Types
      class EventsListV1ResponseItem < Internal::Types::Model
        field :api_version, -> { String }, optional: false, nullable: false, api_name: "apiVersion"

        field :event_id, -> { String }, optional: false, nullable: false, api_name: "eventId"

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :event_type, -> { BridgeApi::Events::Types::EventsListV1ResponseItemEventType }, optional: false, nullable: false, api_name: "eventType"

        field :object_type, -> { String }, optional: false, nullable: false, api_name: "objectType"

        field :object_id_, -> { String }, optional: false, nullable: false, api_name: "objectId"

        field :data, -> { Object }, optional: true, nullable: false

        field :previous, -> { Object }, optional: true, nullable: false
      end
    end
  end
end
