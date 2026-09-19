# frozen_string_literal: true

module Bridge_api
  module Policies
    module V2
      module Types
        module PolicyCreateV2ResponseRelationship
          extend Bridge_api::Internal::Types::Enum

          SELF = "SELF"
          CHILD = "CHILD"
          SPOUSE = "SPOUSE"
          OTHER = "OTHER"
          NONE = "NONE"
        end
      end
    end
  end
end
