# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendaListV1ResponseItemDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { Bridge_api::Notes::Types::NoteAddendaListV1ResponseItemDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
