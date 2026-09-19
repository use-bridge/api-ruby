# frozen_string_literal: true

module Bridge_api
  module Billing
    module SetupIntent
      module Types
        class SetupIntentCreateStripeV1Request < Internal::Types::Model
          field :patient_id, -> { String }, optional: false, nullable: false, api_name: "patientId"
        end
      end
    end
  end
end
