# frozen_string_literal: true

module Bridge_api
  module Patients
    module Types
      module PatientUpdateV1ResponseAccountFieldStatus
        extend Bridge_api::Internal::Types::Enum

        CURRENT = "CURRENT"
        DUE = "DUE"
        DELINQUENT = "DELINQUENT"
      end
    end
  end
end
