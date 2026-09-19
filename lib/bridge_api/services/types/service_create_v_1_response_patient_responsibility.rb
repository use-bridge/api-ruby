# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceCreateV1ResponsePatientResponsibility < Internal::Types::Model
        field :amount, -> { Bridge_api::Services::Types::ServiceCreateV1ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

        field :status, -> { Bridge_api::Services::Types::ServiceCreateV1ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

        field :paid, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
