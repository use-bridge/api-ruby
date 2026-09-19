# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceNoteGetV1ResponseAddendaElementSignature < Internal::Types::Model
        field :timestamp, -> { String }, optional: false, nullable: false

        field :provider, -> { BridgeApi::Services::Types::ServiceNoteGetV1ResponseAddendaElementSignatureFieldProvider }, optional: false, nullable: false
      end
    end
  end
end
