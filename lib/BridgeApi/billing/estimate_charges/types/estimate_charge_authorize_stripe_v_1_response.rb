# frozen_string_literal: true

module BridgeApi
  module Billing
    module EstimateCharges
      module Types
        class EstimateChargeAuthorizeStripeV1Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :service_eligibility_id, -> { String }, optional: false, nullable: false, api_name: "serviceEligibilityId"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :amount, -> { Integer }, optional: false, nullable: false

          field :status, -> { BridgeApi::Billing::EstimateCharges::Types::EstimateChargeAuthorizeStripeV1ResponseStatus }, optional: false, nullable: false

          field :stripe, -> { BridgeApi::Billing::EstimateCharges::Types::EstimateChargeAuthorizeStripeV1ResponseStripe }, optional: true, nullable: false
        end
      end
    end
  end
end
