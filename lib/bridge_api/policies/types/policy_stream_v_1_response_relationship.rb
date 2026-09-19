# frozen_string_literal: true

module Bridge_api
  module Policies
    module Types
      module PolicyStreamV1ResponseRelationship
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
