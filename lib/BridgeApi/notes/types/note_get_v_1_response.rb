# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteGetV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { BridgeApi::Notes::Types::NoteGetV1ResponseData }, optional: false, nullable: false

        field :signature, -> { BridgeApi::Notes::Types::NoteGetV1ResponseSignature }, optional: false, nullable: false

        field :addenda, -> { Internal::Types::Array[BridgeApi::Notes::Types::NoteGetV1ResponseAddendum] }, optional: false, nullable: false
      end
    end
  end
end
