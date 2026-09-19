# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteCreateV1ResponseAddendaElementSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { BridgeApi::Notes::Types::NoteCreateV1ResponseAddendaElementSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
