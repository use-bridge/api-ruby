# frozen_string_literal: true

module BridgeApi
  module Patients
    module V2
      module Types
        module PatientGetV2ResponseAccountFieldStatus
          extend BridgeApi::Internal::Types::Enum

          CURRENT = "CURRENT"
          DUE = "DUE"
          DELINQUENT = "DELINQUENT"
        end
      end
    end
  end
end
