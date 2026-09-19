# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteGetV1ResponseAddendaElementData < Internal::Types::Model
        field :patient_name, -> { String }, optional: true, nullable: false, api_name: "PATIENT_NAME"

        field :icd_10, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "ICD10"

        field :medications, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "MEDICATIONS"

        field :allergies, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "ALLERGIES"

        field :subjective, -> { String }, optional: true, nullable: false, api_name: "SUBJECTIVE"

        field :objective, -> { String }, optional: true, nullable: false, api_name: "OBJECTIVE"

        field :assessment, -> { String }, optional: true, nullable: false, api_name: "ASSESSMENT"

        field :text, -> { String }, optional: true, nullable: false, api_name: "TEXT"

        field :plan, -> { String }, optional: true, nullable: false, api_name: "PLAN"

        field :diagnosis, -> { String }, optional: true, nullable: false, api_name: "DIAGNOSIS"

        field :intervention, -> { String }, optional: true, nullable: false, api_name: "INTERVENTION"

        field :monitoring_and_evaluation, -> { String }, optional: true, nullable: false, api_name: "MONITORING_AND_EVALUATION"

        field :telehealth_disclaimer, -> { String }, optional: true, nullable: false, api_name: "TELEHEALTH_DISCLAIMER"

        field :total_time_spent, -> { String }, optional: true, nullable: false, api_name: "TOTAL_TIME_SPENT"

        field :individual_time_spent_minutes, -> { Integer }, optional: true, nullable: false, api_name: "INDIVIDUAL_TIME_SPENT_MINUTES"

        field :time_spent_minutes, -> { Integer }, optional: true, nullable: false, api_name: "TIME_SPENT_MINUTES"

        field :therapy_time_spent_minutes, -> { Integer }, optional: true, nullable: false, api_name: "THERAPY_TIME_SPENT_MINUTES"

        field :sma_group_size, -> { Integer }, optional: true, nullable: false, api_name: "SMA_GROUP_SIZE"

        field :height, -> { Integer }, optional: true, nullable: false, api_name: "HEIGHT"

        field :weight, -> { Integer }, optional: true, nullable: false, api_name: "WEIGHT"

        field :prescription_written, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "PRESCRIPTION_WRITTEN"

        field :medication_managed, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "MEDICATION_MANAGED"

        field :date_range_start, -> { String }, optional: true, nullable: false, api_name: "DATE_RANGE_START"

        field :date_range_end, -> { String }, optional: true, nullable: false, api_name: "DATE_RANGE_END"

        field :monitoring_data, -> { Internal::Types::Array[Bridge_api::Notes::Types::NoteGetV1ResponseAddendaElementDataFieldMonitoringDatum] }, optional: true, nullable: false, api_name: "MONITORING_DATA"

        field :scored_assessments, -> { Internal::Types::Array[Bridge_api::Notes::Types::NoteGetV1ResponseAddendaElementDataFieldScoredAssessment] }, optional: true, nullable: false, api_name: "SCORED_ASSESSMENTS"

        field :initiating_visit_date, -> { String }, optional: true, nullable: false, api_name: "INITIATING_VISIT_DATE"
      end
    end
  end
end
