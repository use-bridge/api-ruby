# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteAddendumCreateV1RequestSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider_id, -> { String }, optional: false, nullable: false, api_name: "providerId"
      end
    end
  end
end
