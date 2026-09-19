# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Health
      module Types
        class HealthEventsListV1ResponseItem < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :status, -> { Bridge_api::PayerGroups::Health::Types::HealthEventsListV1ResponseItemStatus }, optional: false, nullable: false

          field :previous_status, -> { Bridge_api::PayerGroups::Health::Types::HealthEventsListV1ResponseItemPreviousStatus }, optional: true, nullable: false, api_name: "previousStatus"

          field :event_at, -> { String }, optional: false, nullable: false, api_name: "eventAt"
        end
      end
    end
  end
end
