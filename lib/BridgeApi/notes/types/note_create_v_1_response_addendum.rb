# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteCreateV1ResponseAddendum < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { BridgeApi::Notes::Types::NoteCreateV1ResponseAddendaElementData }, optional: false, nullable: false

        field :signature, -> { BridgeApi::Notes::Types::NoteCreateV1ResponseAddendaElementSignature }, optional: false, nullable: false
      end
    end
  end
end
