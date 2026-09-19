# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceUpdateV2ResponseTask < Internal::Types::Model
          field :type, -> { Bridge_api::Services::V2::Types::ServiceUpdateV2ResponseTasksElementType }, optional: false, nullable: false

          field :memo, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
