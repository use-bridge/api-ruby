# frozen_string_literal: true

module Bridge_api
  module Providers
    module Types
      class ProvidersListV1Request < Internal::Types::Model
        field :filter_active, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "filter.active"

        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
