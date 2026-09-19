# frozen_string_literal: true

module Bridge_api
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStates < Internal::Types::Model
          field :license_status, -> { Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLicenseStatus }, optional: false, nullable: false, api_name: "licenseStatus"

          field :lines_of_business, -> { Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusiness }, optional: false, nullable: false, api_name: "linesOfBusiness"
        end
      end
    end
  end
end
