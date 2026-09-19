# frozen_string_literal: true

module Bridge_api
  module Providers
    module Types
      class ProviderPostV1Response < Internal::Types::Model
        field :failed, -> { Internal::Types::Array[Bridge_api::Providers::Types::ProviderPostV1ResponseFailed] }, optional: false, nullable: false

        field :successful, -> { Internal::Types::Array[Bridge_api::Providers::Types::ProviderPostV1ResponseSuccessful] }, optional: false, nullable: false
      end
    end
  end
end
