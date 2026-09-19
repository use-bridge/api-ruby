# frozen_string_literal: true

module Bridge_api
  module Billing
    module Fees
      module Types
        class FeesListV1Response < Internal::Types::Model
          field :items, -> { Internal::Types::Array[Bridge_api::Billing::Fees::Types::FeesListV1ResponseItem] }, optional: false, nullable: false

          field :count, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
