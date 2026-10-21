# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasPatient
      module Types
        class CanvasPatientGetCanvasPatientV1ResponseAccount < Internal::Types::Model
          field :status, -> { BridgeApi::Integrations::CanvasPatient::Types::CanvasPatientGetCanvasPatientV1ResponseAccountFieldStatus }, optional: false, nullable: false

          field :balance, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
