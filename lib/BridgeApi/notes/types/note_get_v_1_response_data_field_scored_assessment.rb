# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteGetV1ResponseDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { BridgeApi::Notes::Types::NoteGetV1ResponseDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
