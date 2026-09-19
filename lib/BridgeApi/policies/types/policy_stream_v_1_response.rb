# frozen_string_literal: true

module BridgeApi
  module Policies
    module Types
      class PolicyStreamV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :payer_id, -> { String }, optional: false, nullable: false, api_name: "payerId"

        field :plan_name, -> { String }, optional: true, nullable: false, api_name: "planName"

        field :payer, -> { BridgeApi::Policies::Types::PolicyStreamV1ResponsePayer }, optional: false, nullable: false

        field :person, -> { BridgeApi::Policies::Types::PolicyStreamV1ResponsePerson }, optional: true, nullable: false

        field :status, -> { BridgeApi::Policies::Types::PolicyStreamV1ResponseStatus }, optional: false, nullable: false

        field :errors, -> { Internal::Types::Array[BridgeApi::Policies::Types::PolicyStreamV1ResponseError] }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false, api_name: "memberId"

        field :policy_holder, -> { BridgeApi::Policies::Types::PolicyStreamV1ResponsePolicyHolder }, optional: true, nullable: false, api_name: "policyHolder"

        field :relationship, -> { BridgeApi::Policies::Types::PolicyStreamV1ResponseRelationship }, optional: true, nullable: false

        field :state, -> { BridgeApi::Policies::Types::PolicyStreamV1ResponseState }, optional: false, nullable: false

        field :patient_id, -> { String }, optional: true, nullable: false, api_name: "patientId"

        field :latest, -> { BridgeApi::Policies::Types::PolicyStreamV1ResponseLatest }, optional: true, nullable: false
      end
    end
  end
end
