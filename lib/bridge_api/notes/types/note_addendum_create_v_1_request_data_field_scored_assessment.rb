# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendumCreateV1RequestDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { Bridge_api::Notes::Types::NoteAddendumCreateV1RequestDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
