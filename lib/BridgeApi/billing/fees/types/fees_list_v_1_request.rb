# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      module Types
        class FeesListV1Request < Internal::Types::Model
          field :filter_external_id, -> { String }, optional: true, nullable: false, api_name: "filter.externalId"

          field :filter_patient_id, -> { String }, optional: true, nullable: false, api_name: "filter.patientId"

          field :filter_service_id, -> { String }, optional: true, nullable: false, api_name: "filter.serviceId"

          field :filter_service_eligibility_id, -> { String }, optional: true, nullable: false, api_name: "filter.serviceEligibilityId"

          field :filter_status, -> { BridgeApi::Billing::Fees::Types::FeesListV1FilterStatus }, optional: true, nullable: false, api_name: "filter.status"

          field :page, -> { Integer }, optional: true, nullable: false

          field :limit, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
