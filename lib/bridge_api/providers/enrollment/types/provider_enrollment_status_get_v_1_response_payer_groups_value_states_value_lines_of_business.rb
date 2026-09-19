# frozen_string_literal: true

module Bridge_api
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusiness < Internal::Types::Model
          field :commercial, -> { Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldCommercial }, optional: true, nullable: false, api_name: "COMMERCIAL"

          field :medicare_advantage, -> { Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusinessFieldMedicareAdvantage }, optional: true, nullable: false, api_name: "MEDICARE_ADVANTAGE"
        end
      end
    end
  end
end
