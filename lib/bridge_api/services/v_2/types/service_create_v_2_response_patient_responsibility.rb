# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCreateV2ResponsePatientResponsibility < Internal::Types::Model
          field :amount, -> { Bridge_api::Services::V2::Types::ServiceCreateV2ResponsePatientResponsibilityFieldAmount }, optional: true, nullable: false

          field :status, -> { Bridge_api::Services::V2::Types::ServiceCreateV2ResponsePatientResponsibilityFieldStatus }, optional: true, nullable: false

          field :paid, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
