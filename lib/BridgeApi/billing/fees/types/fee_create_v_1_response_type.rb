# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      module Types
        module FeeCreateV1ResponseType
          extend BridgeApi::Internal::Types::Enum

          LATE_CANCELLATION = "LATE_CANCELLATION"
          NO_SHOW = "NO_SHOW"
        end
      end
    end
  end
end
