# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        class CanvasEncounterGetCanvasEncounterV1ResponsePatientResponsibility < Internal::Types::Model
          field :amount, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

          field :status, -> { BridgeApi::Integrations::CanvasEncounter::Types::CanvasEncounterGetCanvasEncounterV1ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

          field :paid, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
