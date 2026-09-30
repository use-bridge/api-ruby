# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthiePatient
      module Types
        class HealthiePatientGetHealthieClientV1ResponseAccount < Internal::Types::Model
          field :status, -> { BridgeApi::Integrations::HealthiePatient::Types::HealthiePatientGetHealthieClientV1ResponseAccountFieldStatus }, optional: false, nullable: false

          field :balance, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
