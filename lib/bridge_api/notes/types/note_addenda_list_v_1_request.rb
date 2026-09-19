# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendaListV1Request < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :filter_note_id, -> { String }, optional: true, nullable: false, api_name: "filter.noteId"

        field :order_created_at, -> { Bridge_api::Notes::Types::NoteAddendaListV1OrderCreatedAt }, optional: true, nullable: false, api_name: "order.createdAt"

        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
