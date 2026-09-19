# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServicesListV1ResponseItemTask < Internal::Types::Model
        field :type, -> { Bridge_api::Services::Types::ServicesListV1ResponseItemTasksElementType }, optional: false, nullable: false

        field :memo, -> { String }, optional: true, nullable: false
      end
    end
  end
end
