# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceCreateV1RequestServiceEligibility < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :clinical_info, -> { Bridge_api::Services::Types::ServiceCreateV1RequestServiceEligibilityFieldClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"
      end
    end
  end
end
