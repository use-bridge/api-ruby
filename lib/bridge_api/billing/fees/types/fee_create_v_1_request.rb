# frozen_string_literal: true

module Bridge_api
  module Billing
    module Fees
      module Types
        class FeeCreateV1Request < Internal::Types::Model
          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"

          field :service_id, -> { String }, optional: true, nullable: false, api_name: "serviceId"

          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :type, -> { Bridge_api::Billing::Fees::Types::FeeCreateV1RequestType }, optional: false, nullable: false

          field :amount, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
