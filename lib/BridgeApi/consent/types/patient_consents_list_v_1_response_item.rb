# frozen_string_literal: true

module BridgeApi
  module Consent
    module Types
      class PatientConsentsListV1ResponseItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

        field :type, -> { BridgeApi::Consent::Types::PatientConsentsListV1ResponseItemType }, optional: false, nullable: false

        field :version, -> { String }, optional: false, nullable: false

        field :consented_at, -> { String }, optional: false, nullable: false, api_name: "consentedAt"

        field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"

        field :status, -> { BridgeApi::Consent::Types::PatientConsentsListV1ResponseItemStatus }, optional: false, nullable: false
      end
    end
  end
end
