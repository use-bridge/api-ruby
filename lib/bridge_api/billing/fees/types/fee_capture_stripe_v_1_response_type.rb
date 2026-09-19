# frozen_string_literal: true

module Bridge_api
  module Billing
    module Fees
      module Types
        module FeeCaptureStripeV1ResponseType
          extend Bridge_api::Internal::Types::Enum

          LATE_CANCELLATION = "LATE_CANCELLATION"
          NO_SHOW = "NO_SHOW"
        end
      end
    end
  end
end
