# frozen_string_literal: true

module Bridge_api
  module Policies
    module Types
      class PolicyStreamV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :payer_id, -> { String }, optional: false, nullable: false, api_name: "payerId"

        field :plan_name, -> { String }, optional: true, nullable: false, api_name: "planName"

        field :payer, -> { Bridge_api::Policies::Types::PolicyStreamV1ResponsePayer }, optional: false, nullable: false

        field :person, -> { Bridge_api::Policies::Types::PolicyStreamV1ResponsePerson }, optional: true, nullable: false

        field :status, -> { Bridge_api::Policies::Types::PolicyStreamV1ResponseStatus }, optional: false, nullable: false

        field :errors, -> { Internal::Types::Array[Bridge_api::Policies::Types::PolicyStreamV1ResponseError] }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false, api_name: "memberId"

        field :policy_holder, -> { Bridge_api::Policies::Types::PolicyStreamV1ResponsePolicyHolder }, optional: true, nullable: false, api_name: "policyHolder"

        field :relationship, -> { Bridge_api::Policies::Types::PolicyStreamV1ResponseRelationship }, optional: true, nullable: false

        field :state, -> { Bridge_api::Policies::Types::PolicyStreamV1ResponseState }, optional: false, nullable: false

        field :patient_id, -> { String }, optional: true, nullable: false, api_name: "patientId"

        field :latest, -> { Bridge_api::Policies::Types::PolicyStreamV1ResponseLatest }, optional: true, nullable: false
      end
    end
  end
end
