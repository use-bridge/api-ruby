# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounters
      module Types
        class CanvasEncounterEnsureCanvasEncounterV1Request < Internal::Types::Model
          field :canvas_encounter_id, -> { String }, optional: false, nullable: false, api_name: "canvasEncounterId"
        end
      end
    end
  end
end
