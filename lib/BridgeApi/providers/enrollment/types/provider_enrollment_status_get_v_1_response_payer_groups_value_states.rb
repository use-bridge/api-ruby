# frozen_string_literal: true

module BridgeApi
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStates < Internal::Types::Model
          field :license_status, -> { BridgeApi::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLicenseStatus }, optional: false, nullable: false, api_name: "licenseStatus"

          field :lines_of_business, -> { BridgeApi::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStatesValueLinesOfBusiness }, optional: false, nullable: false, api_name: "linesOfBusiness"
        end
      end
    end
  end
end
