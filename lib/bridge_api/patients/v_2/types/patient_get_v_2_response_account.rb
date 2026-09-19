# frozen_string_literal: true

module Bridge_api
  module Patients
    module V2
      module Types
        class PatientGetV2ResponseAccount < Internal::Types::Model
          field :status, -> { Bridge_api::Patients::V2::Types::PatientGetV2ResponseAccountFieldStatus }, optional: false, nullable: false

          field :balance, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
