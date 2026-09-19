# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCreateV2ResponseServiceType < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :place_of_service, -> { BridgeApi::Services::V2::Types::ServiceCreateV2ResponseServiceTypeFieldPlaceOfService }, optional: false, nullable: false, api_name: "placeOfService"

          field :provider_type, -> { BridgeApi::Services::V2::Types::ServiceCreateV2ResponseServiceTypeFieldProviderTypesElement }, optional: false, nullable: false, api_name: "providerType"

          field :provider_types, -> { Internal::Types::Array[BridgeApi::Services::V2::Types::ServiceCreateV2ResponseServiceTypeFieldProviderTypesElement] }, optional: false, nullable: false, api_name: "providerTypes"

          field :cost, -> { Integer }, optional: false, nullable: false

          field :note_fields, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "noteFields"

          field :conditional_patient_responsibility, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "conditionalPatientResponsibility"

          field :self_pay_cost, -> { Integer }, optional: true, nullable: false, api_name: "selfPayCost"
        end
      end
    end
  end
end
