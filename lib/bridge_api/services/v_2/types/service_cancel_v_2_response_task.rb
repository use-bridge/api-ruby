# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceCancelV2ResponseTask < Internal::Types::Model
          field :type, -> { Bridge_api::Services::V2::Types::ServiceCancelV2ResponseTasksElementType }, optional: false, nullable: false

          field :memo, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
