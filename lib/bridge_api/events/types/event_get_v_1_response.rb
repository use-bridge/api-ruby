# frozen_string_literal: true

module Bridge_api
  module Events
    module Types
      class EventGetV1Response < Internal::Types::Model
        field :api_version, -> { String }, optional: false, nullable: false, api_name: "apiVersion"

        field :event_id, -> { String }, optional: false, nullable: false, api_name: "eventId"

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :event_type, -> { Bridge_api::Events::Types::EventGetV1ResponseEventType }, optional: false, nullable: false, api_name: "eventType"

        field :object_type, -> { String }, optional: false, nullable: false, api_name: "objectType"

        field :object_id_, -> { String }, optional: false, nullable: false, api_name: "objectId"

        field :data, -> { Object }, optional: true, nullable: false

        field :previous, -> { Object }, optional: true, nullable: false
      end
    end
  end
end
