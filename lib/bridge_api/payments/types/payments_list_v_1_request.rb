# frozen_string_literal: true

module Bridge_api
  module Payments
    module Types
      class PaymentsListV1Request < Internal::Types::Model
        field :filter_patient_id, -> { String }, optional: true, nullable: false, api_name: "filter.patientId"

        field :filter_service_id, -> { String }, optional: true, nullable: false, api_name: "filter.serviceId"

        field :filter_type, -> { Bridge_api::Payments::Types::PaymentsListV1FilterType }, optional: true, nullable: false, api_name: "filter.type"

        field :order_paid_at, -> { Bridge_api::Payments::Types::PaymentsListV1OrderPaidAt }, optional: true, nullable: false, api_name: "order.paidAt"

        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
