# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounters
      module Types
        class CanvasEncounterEnsureCanvasEncounterV1ResponsePayment < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

          field :paid_at, -> { String }, optional: false, nullable: false, api_name: "paidAt"

          field :transaction_id, -> { String }, optional: false, nullable: false, api_name: "transactionId"

          field :type, -> { BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1ResponsePaymentsElementType }, optional: false, nullable: false

          field :amount, -> { Integer }, optional: false, nullable: false

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :memo, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
