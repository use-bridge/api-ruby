# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteCreateV1Request < Internal::Types::Model
        field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { BridgeApi::Notes::Types::NoteCreateV1RequestData }, optional: false, nullable: false

        field :signature, -> { BridgeApi::Notes::Types::NoteCreateV1RequestSignature }, optional: false, nullable: false
      end
    end
  end
end
