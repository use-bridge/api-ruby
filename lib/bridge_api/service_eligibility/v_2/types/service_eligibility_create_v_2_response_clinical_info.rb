# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module V2
      module Types
        class ServiceEligibilityCreateV2ResponseClinicalInfo < Internal::Types::Model
          field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
