# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServicesListV1ResponseItemPatientResponsibility < Internal::Types::Model
        field :amount, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemPatientResponsibilityFieldAmount }, optional: true, nullable: false

        field :status, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemPatientResponsibilityFieldStatus }, optional: true, nullable: false

        field :paid, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
