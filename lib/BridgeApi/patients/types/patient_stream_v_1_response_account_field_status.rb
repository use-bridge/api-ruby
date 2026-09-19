# frozen_string_literal: true

module BridgeApi
  module Patients
    module Types
      module PatientStreamV1ResponseAccountFieldStatus
        extend BridgeApi::Internal::Types::Enum

        CURRENT = "CURRENT"
        DUE = "DUE"
        DELINQUENT = "DELINQUENT"
      end
    end
  end
end
