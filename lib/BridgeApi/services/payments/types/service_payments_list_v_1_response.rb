# frozen_string_literal: true

module BridgeApi
  module Services
    module Payments
      module Types
        class ServicePaymentsListV1Response < Internal::Types::Model
          field :items, -> { Internal::Types::Array[BridgeApi::Services::Payments::Types::ServicePaymentsListV1ResponseItem] }, optional: false, nullable: false

          field :count, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
