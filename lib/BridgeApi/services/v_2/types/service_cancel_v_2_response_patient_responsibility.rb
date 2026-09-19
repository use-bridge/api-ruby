# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCancelV2ResponsePatientResponsibility < Internal::Types::Model
          field :amount, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

          field :status, -> { BridgeApi::Services::V2::Types::ServiceCancelV2ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

          field :paid, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
