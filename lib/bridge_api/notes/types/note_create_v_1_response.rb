# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteCreateV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { Bridge_api::Notes::Types::NoteCreateV1ResponseData }, optional: false, nullable: false

        field :signature, -> { Bridge_api::Notes::Types::NoteCreateV1ResponseSignature }, optional: false, nullable: false

        field :addenda, -> { Internal::Types::Array[Bridge_api::Notes::Types::NoteCreateV1ResponseAddendum] }, optional: false, nullable: false
      end
    end
  end
end
