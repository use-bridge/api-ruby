# frozen_string_literal: true

module BridgeApi
  module Patients
    module V2
      module Types
        class PatientCreateV2ResponseAccount < Internal::Types::Model
          field :status, -> { BridgeApi::Patients::V2::Types::PatientCreateV2ResponseAccountFieldStatus }, optional: false, nullable: false

          field :balance, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
