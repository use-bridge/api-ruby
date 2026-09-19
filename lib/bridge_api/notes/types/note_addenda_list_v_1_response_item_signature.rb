# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendaListV1ResponseItemSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { Bridge_api::Notes::Types::NoteAddendaListV1ResponseItemSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
