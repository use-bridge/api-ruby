# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceCancelV2Request < Internal::Types::Model
          field :cancellation_reason, -> { BridgeApi::Services::V2::Types::ServiceCancelV2RequestCancellationReason }, optional: true, nullable: false, api_name: "cancellationReason"
        end
      end
    end
  end
end
