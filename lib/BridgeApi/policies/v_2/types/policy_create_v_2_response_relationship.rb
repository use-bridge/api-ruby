# frozen_string_literal: true

module BridgeApi
  module Policies
    module V2
      module Types
        module PolicyCreateV2ResponseRelationship
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
end
