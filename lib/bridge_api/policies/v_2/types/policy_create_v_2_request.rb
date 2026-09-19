# frozen_string_literal: true

module Bridge_api
  module Policies
    module V2
      module Types
        class PolicyCreateV2Request < Internal::Types::Model
          field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

          field :person, -> { Bridge_api::Policies::V2::Types::PolicyCreateV2RequestPerson }, optional: false, nullable: false

          field :state, -> { Bridge_api::Policies::V2::Types::PolicyCreateV2RequestState }, optional: false, nullable: false

          field :payer_id, -> { String }, optional: false, nullable: false, api_name: "payerId"

          field :member_id, -> { String }, optional: true, nullable: false, api_name: "memberId"

          field :date_of_service, -> { String }, optional: true, nullable: false, api_name: "dateOfService"
        end
      end
    end
  end
end
