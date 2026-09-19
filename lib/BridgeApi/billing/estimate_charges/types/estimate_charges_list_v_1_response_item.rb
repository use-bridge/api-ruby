# frozen_string_literal: true

module BridgeApi
  module Billing
    module EstimateCharges
      module Types
        class EstimateChargesListV1ResponseItem < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :amount, -> { Integer }, optional: false, nullable: false

          field :status, -> { BridgeApi::Billing::EstimateCharges::Types::EstimateChargesListV1ResponseItemStatus }, optional: false, nullable: false

          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :service_eligibility_id, -> { String }, optional: false, nullable: false, api_name: "serviceEligibilityId"

          field :authorized_amount, -> { Integer }, optional: true, nullable: false, api_name: "authorizedAmount"

          field :captured_amount, -> { Integer }, optional: true, nullable: false, api_name: "capturedAmount"

          field :refunded_amount, -> { Integer }, optional: true, nullable: false, api_name: "refundedAmount"
        end
      end
    end
  end
end
