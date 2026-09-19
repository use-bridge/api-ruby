# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendumCreateV1Request < Internal::Types::Model
        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { Bridge_api::Notes::Types::NoteAddendumCreateV1RequestData }, optional: false, nullable: false

        field :signature, -> { Bridge_api::Notes::Types::NoteAddendumCreateV1RequestSignature }, optional: false, nullable: false
      end
    end
  end
end
