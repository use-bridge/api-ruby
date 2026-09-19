# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceGetV1ResponsePatientResponsibility < Internal::Types::Model
        field :amount, -> { BridgeApi::Services::Types::ServiceGetV1ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

        field :status, -> { BridgeApi::Services::Types::ServiceGetV1ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

        field :paid, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
