# frozen_string_literal: true

module Bridge_api
  module Providers
    module Types
      class ProviderUpdateV1Request < Internal::Types::Model
        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"
      end
    end
  end
end
