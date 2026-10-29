# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounters
      module Types
        class CanvasEncounterEnsureCanvasEncounterV1ResponseTask < Internal::Types::Model
          field :in_review_at, -> { String }, optional: true, nullable: false, api_name: "inReviewAt"

          field :ready, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :type, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponseTasksElementType }, optional: false, nullable: false

          field :memo, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
