# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      class PatientsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::Patients::Types::PatientsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
