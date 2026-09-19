# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteAddendaListV1ResponseItemDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { BridgeApi::Notes::Types::NoteAddendaListV1ResponseItemDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
