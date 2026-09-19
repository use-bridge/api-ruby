# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2RequestClinicalInfo < Internal::Types::Model
          field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
