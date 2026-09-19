# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceStreamV1ResponseTask < Internal::Types::Model
        field :type, -> { Bridge_api::Services::Types::ServiceStreamV1ResponseTasksElementType }, optional: false, nullable: false

        field :memo, -> { String }, optional: true, nullable: false
      end
    end
  end
end
