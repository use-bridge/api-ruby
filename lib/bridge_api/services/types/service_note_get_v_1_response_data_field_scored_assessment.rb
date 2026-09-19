# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceNoteGetV1ResponseDataFieldScoredAssessment < Internal::Types::Model
        field :score, -> { String }, optional: false, nullable: false

        field :type, -> { Bridge_api::Services::Types::ServiceNoteGetV1ResponseDataFieldScoredAssessmentsElementType }, optional: false, nullable: false
      end
    end
  end
end
