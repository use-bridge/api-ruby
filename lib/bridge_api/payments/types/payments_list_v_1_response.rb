# frozen_string_literal: true

module Bridge_api
  module Payments
    module Types
      class PaymentsListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::Payments::Types::PaymentsListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
