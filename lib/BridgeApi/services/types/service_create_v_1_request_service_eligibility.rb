# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceCreateV1RequestServiceEligibility < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :clinical_info, -> { BridgeApi::Services::Types::ServiceCreateV1RequestServiceEligibilityFieldClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"
      end
    end
  end
end
