# frozen_string_literal: true

module Bridge_api
  module Policies
    module V2
      module Types
        class PolicyCreateV2ResponseError < Internal::Types::Model
          field :code, -> { String }, optional: false, nullable: false

          field :message, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
