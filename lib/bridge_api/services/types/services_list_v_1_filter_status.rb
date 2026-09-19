# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      module ServicesListV1FilterStatus
        # ServicesListV1FilterStatus is an alias for ServicesListV1FilterStatusElement

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
