# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteCreateV1RequestDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { BridgeApi::Notes::Types::NoteCreateV1RequestDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
