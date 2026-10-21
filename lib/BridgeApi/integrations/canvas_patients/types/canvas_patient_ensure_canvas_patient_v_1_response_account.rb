# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasPatients
      module Types
        class CanvasPatientEnsureCanvasPatientV1ResponseAccount < Internal::Types::Model
          field :status, -> { BridgeApi::Integrations::CanvasPatients::Types::CanvasPatientEnsureCanvasPatientV1ResponseAccountFieldStatus }, optional: false, nullable: false

          field :balance, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
