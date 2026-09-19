# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServiceGetV1ResponseTask < Internal::Types::Model
        field :type, -> { BridgeApi::Services::Types::ServiceGetV1ResponseTasksElementType }, optional: false, nullable: false

        field :memo, -> { String }, optional: true, nullable: false
      end
    end
  end
end
