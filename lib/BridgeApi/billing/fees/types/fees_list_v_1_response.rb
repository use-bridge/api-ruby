# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      module Types
        class FeesListV1Response < Internal::Types::Model
          field :items, -> { Internal::Types::Array[BridgeApi::Billing::Fees::Types::FeesListV1ResponseItem] }, optional: false, nullable: false

          field :count, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
