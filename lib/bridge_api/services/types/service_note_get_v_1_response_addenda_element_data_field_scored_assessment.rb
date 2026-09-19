# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceNoteGetV1ResponseAddendaElementDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { Bridge_api::Services::Types::ServiceNoteGetV1ResponseAddendaElementDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
