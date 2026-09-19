# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Health
      module Types
        class HealthEventsListV1Response < Internal::Types::Model
          field :items, -> { Internal::Types::Array[Bridge_api::PayerGroups::Health::Types::HealthEventsListV1ResponseItem] }, optional: false, nullable: false

          field :count, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
