# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteAddendaListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[BridgeApi::Notes::Types::NoteAddendaListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
