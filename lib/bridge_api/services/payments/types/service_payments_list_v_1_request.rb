# frozen_string_literal: true

module Bridge_api
  module Services
    module Payments
      module Types
        class ServicePaymentsListV1Request < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :page, -> { Integer }, optional: true, nullable: false

          field :limit, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
