# frozen_string_literal: true

module Bridge_api
  module Billing
    module SetupIntent
      module Types
        class SetupIntentCreateStripeV1Response < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :client_secret, -> { String }, optional: false, nullable: false, api_name: "clientSecret"
        end
      end
    end
  end
end
