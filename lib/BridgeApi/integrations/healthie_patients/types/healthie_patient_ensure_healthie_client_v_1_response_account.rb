# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthiePatients
      module Types
        class HealthiePatientEnsureHealthieClientV1ResponseAccount < Internal::Types::Model
          field :status, -> { BridgeApi::Integrations::HealthiePatients::Types::HealthiePatientEnsureHealthieClientV1ResponseAccountFieldStatus }, optional: false, nullable: false

          field :balance, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
