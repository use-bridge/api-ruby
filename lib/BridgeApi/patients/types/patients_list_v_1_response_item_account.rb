# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      class PatientsListV1ResponseItemAccount < Internal::Types::Model
        field :status, -> { BridgeApi::Patients::Types::PatientsListV1ResponseItemAccountFieldStatus }, optional: false, nullable: false

        field :balance, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
