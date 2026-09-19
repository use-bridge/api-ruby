# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteCreateV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { BridgeApi::Notes::Types::NoteCreateV1ResponseData }, optional: false, nullable: false

        field :signature, -> { BridgeApi::Notes::Types::NoteCreateV1ResponseSignature }, optional: false, nullable: false

        field :addenda, -> { Internal::Types::Array[BridgeApi::Notes::Types::NoteCreateV1ResponseAddendum] }, optional: false, nullable: false
      end
    end
  end
end
