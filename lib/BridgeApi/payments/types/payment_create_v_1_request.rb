# frozen_string_literal: true

module BridgeApi
  module Payments
    module Types
      class PaymentCreateV1Request < Internal::Types::Model
        field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

        field :paid_at, -> { String }, optional: false, nullable: false, api_name: "paidAt"

        field :transaction_id, -> { String }, optional: false, nullable: false, api_name: "transactionId"

        field :type, -> { BridgeApi::Payments::Types::PaymentCreateV1RequestType }, optional: false, nullable: false

        field :amount, -> { Integer }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :memo, -> { String }, optional: true, nullable: false
      end
    end
  end
end
