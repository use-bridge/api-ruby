# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteGetV1ResponseAddendaElementDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { Bridge_api::Notes::Types::NoteGetV1ResponseAddendaElementDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
