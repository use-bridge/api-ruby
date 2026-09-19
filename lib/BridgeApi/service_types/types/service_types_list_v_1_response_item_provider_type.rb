# frozen_string_literal: true

module BridgeApi
  module ServiceTypes
    module Types
      module ServiceTypesListV1ResponseItemProviderType
        # ServiceTypesListV1ResponseItemProviderType is an alias for ServiceTypesListV1ResponseItemProviderTypesElement

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
