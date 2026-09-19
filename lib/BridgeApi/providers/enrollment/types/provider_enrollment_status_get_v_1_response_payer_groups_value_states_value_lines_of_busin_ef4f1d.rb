# frozen_string_literal: true

module BridgeApi
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldCommercial < Internal::Types::Model
          field :status, -> { BridgeApi::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldCommercialFieldStatus }, optional: false, nullable: false

          field :submitted_at, -> { String }, optional: true, nullable: false, api_name: "submittedAt"

          field :approved_at, -> { String }, optional: true, nullable: false, api_name: "approvedAt"

          field :effective_at, -> { String }, optional: true, nullable: false, api_name: "effectiveAt"

          field :active_at, -> { String }, optional: true, nullable: false, api_name: "activeAt"
        end
      end
    end
  end
end
