# frozen_string_literal: true

require "test_helper"

describe BridgeApi::Internal::Types::Boolean do
  describe ".coerce" do
    it "coerces true/false" do
      assert BridgeApi::Internal::Types::Boolean.coerce(true)
      refute BridgeApi::Internal::Types::Boolean.coerce(false)
    end

    it "coerces an Integer" do
      assert BridgeApi::Internal::Types::Boolean.coerce(1)
      refute BridgeApi::Internal::Types::Boolean.coerce(0)
    end

    it "coerces a String" do
      assert BridgeApi::Internal::Types::Boolean.coerce("1")
      assert BridgeApi::Internal::Types::Boolean.coerce("true")
      refute BridgeApi::Internal::Types::Boolean.coerce("0")
    end

    it "passes through other values with strictness off" do
      obj = Object.new

      assert_equal obj, BridgeApi::Internal::Types::Boolean.coerce(obj)
    end

    it "raises an error with other values with strictness on" do
      assert_raises BridgeApi::Internal::Errors::TypeError do
        BridgeApi::Internal::Types::Boolean.coerce(Object.new, strict: true)
      end
    end
  end
end
