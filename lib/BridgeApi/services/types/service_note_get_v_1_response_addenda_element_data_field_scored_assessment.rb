# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceNoteGetV1ResponseAddendaElementDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { BridgeApi::Services::Types::ServiceNoteGetV1ResponseAddendaElementDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
