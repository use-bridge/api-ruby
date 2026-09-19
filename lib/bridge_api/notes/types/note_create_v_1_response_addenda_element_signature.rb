# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteCreateV1ResponseAddendaElementSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { Bridge_api::Notes::Types::NoteCreateV1ResponseAddendaElementSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
