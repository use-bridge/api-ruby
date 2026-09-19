# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        class ServiceUpdateV2ResponseTask < Internal::Types::Model
          field :type, -> { BridgeApi::Services::V2::Types::ServiceUpdateV2ResponseTasksElementType }, optional: false, nullable: false

          field :memo, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
