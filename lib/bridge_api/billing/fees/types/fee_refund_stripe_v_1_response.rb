# frozen_string_literal: true

module Bridge_api
  module Billing
    module Fees
      module Types
        class FeeRefundStripeV1Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :service_id, -> { String }, optional: true, nullable: false, api_name: "serviceId"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :type, -> { Bridge_api::Billing::Fees::Types::FeeRefundStripeV1ResponseType }, optional: false, nullable: false

          field :amount, -> { Integer }, optional: false, nullable: false

          field :status, -> { Bridge_api::Billing::Fees::Types::FeeRefundStripeV1ResponseStatus }, optional: false, nullable: false

          field :stripe, -> { Bridge_api::Billing::Fees::Types::FeeRefundStripeV1ResponseStripe }, optional: true, nullable: false
        end
      end
    end
  end
end
