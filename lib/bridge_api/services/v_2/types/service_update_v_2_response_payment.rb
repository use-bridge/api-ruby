# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceUpdateV2ResponsePayment < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

          field :paid_at, -> { String }, optional: false, nullable: false, api_name: "paidAt"

          field :transaction_id, -> { String }, optional: false, nullable: false, api_name: "transactionId"

          field :type, -> { Bridge_api::Services::V2::Types::ServiceUpdateV2ResponsePaymentsElementType }, optional: false, nullable: false

          field :amount, -> { Integer }, optional: false, nullable: false

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :memo, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
