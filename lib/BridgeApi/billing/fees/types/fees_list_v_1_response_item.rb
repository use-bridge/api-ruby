# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      module Types
        class FeesListV1ResponseItem < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :amount, -> { Integer }, optional: false, nullable: false

          field :type, -> { BridgeApi::Billing::Fees::Types::FeesListV1ResponseItemType }, optional: false, nullable: false

          field :status, -> { BridgeApi::Billing::Fees::Types::FeesListV1ResponseItemStatus }, optional: false, nullable: false

          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :service_id, -> { String }, optional: true, nullable: false, api_name: "serviceId"
        end
      end
    end
  end
end
