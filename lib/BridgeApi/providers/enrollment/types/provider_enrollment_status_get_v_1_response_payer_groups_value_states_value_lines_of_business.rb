# frozen_string_literal: true

module BridgeApi
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusiness < Internal::Types::Model
          field :commercial, -> { BridgeApi::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldCommercial }, optional: true, nullable: false, api_name: "COMMERCIAL"

          field :medicare_advantage, -> { BridgeApi::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldMedicareAdvantage }, optional: true, nullable: false, api_name: "MEDICARE_ADVANTAGE"
        end
      end
    end
  end
end
