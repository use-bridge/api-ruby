# frozen_string_literal: true

module BridgeApi
  module Policies
    module Types
      module PolicyGetV1ResponseRelationship
        extend BridgeApi::Internal::Types::Enum

        SELF = "SELF"
        CHILD = "CHILD"
        SPOUSE = "SPOUSE"
        OTHER = "OTHER"
        NONE = "NONE"
      end
    end
  end
end
