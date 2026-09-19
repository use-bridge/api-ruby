# frozen_string_literal: true

module Bridge_api
  module Billing
    module EstimateCharges
      module Types
        class EstimateChargeCreateV1Request < Internal::Types::Model
          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :service_eligibility_id, -> { String }, optional: false, nullable: false, api_name: "serviceEligibilityId"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"
        end
      end
    end
  end
end
