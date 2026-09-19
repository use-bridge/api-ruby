# frozen_string_literal: true

module Bridge_api
  module Consent
    module Types
      class PatientConsentCreateV1Request < Internal::Types::Model
        field :type, -> { Bridge_api::Consent::Types::PatientConsentCreateV1RequestType }, optional: false, nullable: false

        field :version, -> { String }, optional: false, nullable: false

        field :consented_at, -> { String }, optional: false, nullable: false, api_name: "consentedAt"
      end
    end
  end
end
