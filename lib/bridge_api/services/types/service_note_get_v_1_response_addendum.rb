# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceNoteGetV1ResponseAddendum < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { Bridge_api::Services::Types::ServiceNoteGetV1ResponseAddendaElementData }, optional: false, nullable: false

        field :signature, -> { Bridge_api::Services::Types::ServiceNoteGetV1ResponseAddendaElementSignature }, optional: false, nullable: false
      end
    end
  end
end
