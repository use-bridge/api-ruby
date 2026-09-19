# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      module Types
        class FeeCreateV1Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :service_id, -> { String }, optional: true, nullable: false, api_name: "serviceId"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :type, -> { BridgeApi::Billing::Fees::Types::FeeCreateV1ResponseType }, optional: false, nullable: false

          field :amount, -> { Integer }, optional: false, nullable: false

          field :status, -> { BridgeApi::Billing::Fees::Types::FeeCreateV1ResponseStatus }, optional: false, nullable: false
        end
      end
    end
  end
end
