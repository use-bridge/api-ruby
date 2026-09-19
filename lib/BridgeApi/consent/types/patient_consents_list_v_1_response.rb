# frozen_string_literal: true

module BridgeApi
  module Consent
    module Types
      class PatientConsentsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[BridgeApi::Consent::Types::PatientConsentsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
