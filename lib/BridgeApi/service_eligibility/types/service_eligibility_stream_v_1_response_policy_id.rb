# frozen_string_literal: true

module BridgeApi
  module ServiceEligibility
    module Types
      module ServiceEligibilityStreamV1ResponsePolicyId
        # ServiceEligibilityStreamV1ResponsePolicyId is an alias for String

        # @option str [String]
        #
        # @return [untyped]
        def self.load(str)
          ::JSON.parse(str)
        end

        # @option value [untyped]
        #
        # @return [String]
        def self.dump(value)
          ::JSON.generate(value)
        end
      end
    end
  end
end
