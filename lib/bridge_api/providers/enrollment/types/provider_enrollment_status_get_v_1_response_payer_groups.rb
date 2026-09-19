# frozen_string_literal: true

module Bridge_api
  module Providers
    module Enrollment
      module Types
        class ProviderEnrollmentStatusGetV1ResponsePayerGroups < Internal::Types::Model
          field :name, -> { String }, optional: false, nullable: false

          field :states, -> { Internal::Types::Hash[String, Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1ResponsePayerGroupsValueStates] }, optional: false, nullable: false
        end
      end
    end
  end
end
