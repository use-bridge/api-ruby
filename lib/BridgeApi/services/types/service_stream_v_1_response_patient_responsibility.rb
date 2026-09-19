# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceStreamV1ResponsePatientResponsibility < Internal::Types::Model
        field :amount, -> { BridgeApi::Services::Types::ServiceStreamV1ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

        field :status, -> { BridgeApi::Services::Types::ServiceStreamV1ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

        field :paid, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
