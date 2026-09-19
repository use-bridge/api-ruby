# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        module ServiceUpdateV2ResponseServiceEligibilityFieldPolicyId
          # ServiceUpdateV2ResponseServiceEligibilityFieldPolicyId is an alias for String

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
end
