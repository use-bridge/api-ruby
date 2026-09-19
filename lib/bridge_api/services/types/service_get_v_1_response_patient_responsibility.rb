# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceGetV1ResponsePatientResponsibility < Internal::Types::Model
        field :amount, -> { Bridge_api::Services::Types::ServiceGetV1ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

        field :status, -> { Bridge_api::Services::Types::ServiceGetV1ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

        field :paid, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
