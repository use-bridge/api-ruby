# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      class PatientsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[BridgeApi::Patients::Types::PatientsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
