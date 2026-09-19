# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendaListV1ResponseItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { Bridge_api::Notes::Types::NoteAddendaListV1ResponseItemData }, optional: false, nullable: false

        field :signature, -> { Bridge_api::Notes::Types::NoteAddendaListV1ResponseItemSignature }, optional: false, nullable: false
      end
    end
  end
end
