# frozen_string_literal: true

module BridgeApi
  module Consent
    module Types
      class PatientConsentCreateV1Request < Internal::Types::Model
        field :type, -> { BridgeApi::Consent::Types::PatientConsentCreateV1RequestType }, optional: false, nullable: false

        field :version, -> { String }, optional: false, nullable: false

        field :consented_at, -> { String }, optional: false, nullable: false, api_name: "consentedAt"
      end
    end
  end
end
