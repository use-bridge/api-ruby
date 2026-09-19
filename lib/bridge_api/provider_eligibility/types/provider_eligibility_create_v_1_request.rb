# frozen_string_literal: true

module Bridge_api
  module ProviderEligibility
    module Types
      class ProviderEligibilityCreateV1Request < Internal::Types::Model
        field :date_of_service, -> { String }, optional: false, nullable: false, api_name: "dateOfService"

        field :service_type_id, -> { String }, optional: false, nullable: false, api_name: "serviceTypeId"

        field :location, -> { Bridge_api::ProviderEligibility::Types::ProviderEligibilityCreateV1RequestLocation }, optional: false, nullable: false

        field :payer_id, -> { String }, optional: false, nullable: false, api_name: "payerId"
      end
    end
  end
end
