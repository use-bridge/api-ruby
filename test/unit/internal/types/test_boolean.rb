# frozen_string_literal: true

require "test_helper"

describe Bridge_api::Internal::Types::Boolean do
  describe ".coerce" do
    it "coerces true/false" do
      assert Bridge_api::Internal::Types::Boolean.coerce(true)
      refute Bridge_api::Internal::Types::Boolean.coerce(false)
    end

    it "coerces an Integer" do
      assert Bridge_api::Internal::Types::Boolean.coerce(1)
      refute Bridge_api::Internal::Types::Boolean.coerce(0)
    end

    it "coerces a String" do
      assert Bridge_api::Internal::Types::Boolean.coerce("1")
      assert Bridge_api::Internal::Types::Boolean.coerce("true")
      refute Bridge_api::Internal::Types::Boolean.coerce("0")
    end

    it "passes through other values with strictness off" do
      obj = Object.new

      assert_equal obj, Bridge_api::Internal::Types::Boolean.coerce(obj)
    end

    it "raises an error with other values with strictness on" do
      assert_raises Bridge_api::Internal::Errors::TypeError do
        Bridge_api::Internal::Types::Boolean.coerce(Object.new, strict: true)
      end
    end
  end
end
