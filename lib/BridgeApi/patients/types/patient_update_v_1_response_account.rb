# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      class PatientUpdateV1ResponseAccount < Internal::Types::Model
        field :status, -> { BridgeApi::Patients::Types::PatientUpdateV1ResponseAccountFieldStatus }, optional: false, nullable: false

        field :balance, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
