# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendaListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::Notes::Types::NoteAddendaListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
