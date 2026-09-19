# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendumCreateV1ResponseSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { Bridge_api::Notes::Types::NoteAddendumCreateV1ResponseSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
