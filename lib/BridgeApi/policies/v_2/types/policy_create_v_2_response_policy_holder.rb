# frozen_string_literal: true

module BridgeApi
  module Policies
    module V2
      module Types
        class PolicyCreateV2ResponsePolicyHolder < Internal::Types::Model
          field :first_name, -> { String }, optional: false, nullable: false, api_name: "firstName"

          field :middle_name, -> { String }, optional: true, nullable: false, api_name: "middleName"

          field :last_name, -> { String }, optional: false, nullable: false, api_name: "lastName"

          field :date_of_birth, -> { String }, optional: true, nullable: false, api_name: "dateOfBirth"
        end
      end
    end
  end
end
