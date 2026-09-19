# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteGetV1ResponseAddendaElementSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { Bridge_api::Notes::Types::NoteGetV1ResponseAddendaElementSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
