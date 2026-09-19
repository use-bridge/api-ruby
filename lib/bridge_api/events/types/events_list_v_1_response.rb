# frozen_string_literal: true

module Bridge_api
  module Events
    module Types
      class EventsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::Events::Types::EventsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
