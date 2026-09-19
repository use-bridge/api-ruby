# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteCreateV1RequestDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { Bridge_api::Notes::Types::NoteCreateV1RequestDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
