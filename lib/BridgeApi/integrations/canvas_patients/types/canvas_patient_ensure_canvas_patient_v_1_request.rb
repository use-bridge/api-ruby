# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasPatients
      module Types
        class CanvasPatientEnsureCanvasPatientV1Request < Internal::Types::Model
          field :canvas_patient_id, -> { String }, optional: false, nullable: false, api_name: "canvasPatientId"
        end
      end
    end
  end
end
