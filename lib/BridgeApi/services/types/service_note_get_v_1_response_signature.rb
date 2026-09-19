# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceNoteGetV1ResponseSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { BridgeApi::Services::Types::ServiceNoteGetV1ResponseSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
