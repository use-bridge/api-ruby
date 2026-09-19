# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceNoteGetV1ResponseSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { Bridge_api::Services::Types::ServiceNoteGetV1ResponseSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
