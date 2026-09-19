# frozen_string_literal: true

module Bridge_api
  module Providers
    module Types
      class ProvidersListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::Providers::Types::ProvidersListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
