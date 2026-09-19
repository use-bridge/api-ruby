# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServiceStreamV1ResponseServiceTypeFieldProviderType
        # ServiceStreamV1ResponseServiceTypeFieldProviderType is an alias for
        # ServiceStreamV1ResponseServiceTypeFieldProviderTypesElement

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
