# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientsListV1Request < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
