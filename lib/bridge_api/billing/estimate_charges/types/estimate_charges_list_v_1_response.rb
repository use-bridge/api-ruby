# frozen_string_literal: true

module Bridge_api
  module Billing
    module EstimateCharges
      module Types
        class EstimateChargesListV1Response < Internal::Types::Model
          field :items, -> { Internal::Types::Array[Bridge_api::Billing::EstimateCharges::Types::EstimateChargesListV1ResponseItem] }, optional: false, nullable: false

          field :count, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
