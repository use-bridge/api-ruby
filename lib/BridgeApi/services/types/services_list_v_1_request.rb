# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServicesListV1Request < Internal::Types::Model
        field :filter_service_type_id, -> { String }, optional: true, nullable: false, api_name: "filter.serviceTypeId"

        field :filter_patient_id, -> { String }, optional: true, nullable: false, api_name: "filter.patientId"

        field :filter_status, -> { Internal::Types::Array[BridgeApi::Services::Types::ServicesListV1FilterStatusElement] }, optional: true, nullable: false, api_name: "filter.status"

        field :filter_provider_id, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "filter.providerId"

        field :order_created_at, -> { BridgeApi::Services::Types::ServicesListV1OrderCreatedAt }, optional: true, nullable: false, api_name: "order.createdAt"

        field :order_date_of_service, -> { BridgeApi::Services::Types::ServicesListV1OrderDateOfService }, optional: true, nullable: false, api_name: "order.dateOfService"

        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
