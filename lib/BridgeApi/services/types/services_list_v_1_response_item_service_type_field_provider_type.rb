# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      module ServicesListV1ResponseItemServiceTypeFieldProviderType
        # ServicesListV1ResponseItemServiceTypeFieldProviderType is an alias for
        # ServicesListV1ResponseItemServiceTypeFieldProviderTypesElement

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
