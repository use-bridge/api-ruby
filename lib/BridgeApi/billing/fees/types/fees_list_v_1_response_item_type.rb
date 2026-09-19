# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      module Types
        module FeesListV1ResponseItemType
          extend BridgeApi::Internal::Types::Enum

          LATE_CANCELLATION = "LATE_CANCELLATION"
          NO_SHOW = "NO_SHOW"
        end
      end
    end
  end
end
