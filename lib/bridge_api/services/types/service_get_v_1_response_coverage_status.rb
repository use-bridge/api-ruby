# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServiceGetV1ResponseCoverageStatus
        extend Bridge_api::Internal::Types::Enum

        PENDING = "PENDING"
        REVALIDATING = "REVALIDATING"
        VALID = "VALID"
        INVALID_COVERAGE = "INVALID_COVERAGE"
        INVALID_PROVIDER = "INVALID_PROVIDER"
      end
    end
  end
end
