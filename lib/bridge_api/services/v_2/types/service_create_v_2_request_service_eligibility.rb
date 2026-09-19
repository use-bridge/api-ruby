# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCreateV2RequestServiceEligibility < Internal::Types::Model
          field :id, -> { String }, optional: true, nullable: false

          field :clinical_info, -> { Bridge_api::Services::V2::Types::ServiceCreateV2RequestServiceEligibilityFieldClinicalInfo }, optional: true, nullable: false, api_name: "clinicalInfo"
        end
      end
    end
  end
end
