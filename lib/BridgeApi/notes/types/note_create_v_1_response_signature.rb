# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteCreateV1ResponseSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { BridgeApi::Notes::Types::NoteCreateV1ResponseSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
