# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCancelV2Request < Internal::Types::Model
          field :cancellation_reason, -> { Bridge_api::Services::V2::Types::ServiceCancelV2RequestCancellationReason }, optional: true, nullable: false, api_name: "cancellationReason"
        end
      end
    end
  end
end
