# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceNoteGetV1Response < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :service_id, -> { String }, optional: false, nullable: false, api_name: "serviceId"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :data, -> { Bridge_api::Services::Types::ServiceNoteGetV1ResponseData }, optional: false, nullable: false

        field :signature, -> { Bridge_api::Services::Types::ServiceNoteGetV1ResponseSignature }, optional: false, nullable: false

        field :addenda, -> { Internal::Types::Array[Bridge_api::Services::Types::ServiceNoteGetV1ResponseAddendum] }, optional: false, nullable: false
      end
    end
  end
end
