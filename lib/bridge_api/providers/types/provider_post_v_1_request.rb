# frozen_string_literal: true

module Bridge_api
  module Providers
    module Types
      class ProviderPostV1Request < Internal::Types::Model
        field :providers, -> { Internal::Types::Array[Bridge_api::Providers::Types::ProviderPostV1RequestProvider] }, optional: false, nullable: false
      end
    end
  end
end
