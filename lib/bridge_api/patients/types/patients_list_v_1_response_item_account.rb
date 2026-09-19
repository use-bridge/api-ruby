# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientsListV1ResponseItemAccount < Internal::Types::Model
        field :status, -> { Bridge_api::Patients::Types::PatientsListV1ResponseItemAccountFieldStatus }, optional: false, nullable: false

        field :balance, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
