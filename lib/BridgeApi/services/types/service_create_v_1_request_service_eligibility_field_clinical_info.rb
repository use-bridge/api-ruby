# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceCreateV1RequestServiceEligibilityFieldClinicalInfo < Internal::Types::Model
        field :diagnoses, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
