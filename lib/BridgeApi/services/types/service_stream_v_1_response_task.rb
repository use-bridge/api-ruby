# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceStreamV1ResponseTask < Internal::Types::Model
        field :type, -> { BridgeApi::Services::Types::ServiceStreamV1ResponseTasksElementType }, optional: false, nullable: false

        field :memo, -> { String }, optional: true, nullable: false
      end
    end
  end
end
