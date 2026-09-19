# frozen_string_literal: true

module Bridge_api
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldMedicareAdvantage < Internal::Types::Model
          field :status, -> { Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldMedicareAdvantageFieldStatus }, optional: false, nullable: false

          field :submitted_at, -> { String }, optional: true, nullable: false, api_name: "submittedAt"

          field :approved_at, -> { String }, optional: true, nullable: false, api_name: "approvedAt"

          field :effective_at, -> { String }, optional: true, nullable: false, api_name: "effectiveAt"

          field :active_at, -> { String }, optional: true, nullable: false, api_name: "activeAt"
        end
      end
    end
  end
end
