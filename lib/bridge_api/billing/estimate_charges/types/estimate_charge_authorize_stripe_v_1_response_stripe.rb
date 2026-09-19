# frozen_string_literal: true

module Bridge_api
  module Billing
    module EstimateCharges
      module Types
        class EstimateChargeAuthorizeStripeV1ResponseStripe < Internal::Types::Model
          field :status, -> { String }, optional: true, nullable: false

          field :client_secret, -> { String }, optional: true, nullable: false

          field :last_payment_error, -> { Object }, optional: true, nullable: false

          field :next_action, -> { Object }, optional: true, nullable: false
        end
      end
    end
  end
end
