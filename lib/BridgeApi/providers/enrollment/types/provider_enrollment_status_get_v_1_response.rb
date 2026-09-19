# frozen_string_literal: true

module BridgeApi
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1Response < Internal::Types::Model
          field :credentialing_approved, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "credentialingApproved"

          field :payer_groups, -> { Internal::Types::Hash[String, BridgeApi::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroups] }, optional: false, nullable: false, api_name: "payerGroups"
        end
      end
    end
  end
end
