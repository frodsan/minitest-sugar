# frozen_string_literal: true

module Minitest
  module Sugar
    # Public: Helper to define a test method using a String.
    #
    # Examples
    #
    #   require "minitest/autorun"
    #   require "minitest/sugar"
    #
    #   class TruthTest < Minitest::Test
    #     test "assert the truth" do
    #       assert true
    #     end
    #   end
    #
    def test(name, &block)
      test_name = format("test_%s", name.gsub(/\s+/, "_"))

      if method_defined?(test_name)
        raise "#{ test_name } is already defined in #{ self }"
      end

      define_method(test_name, &block)
    end

    # Public: Helper to define a +setup+ method.
    #
    # Examples
    #
    #   require "minitest/autorun"
    #   require "minitest/sugar"
    #
    #   class TruthTest < Minitest::Test
    #     setup do
    #       @truth = true
    #     end
    #
    #     test "assert the truth" do
    #       assert @truth
    #     end
    #   end
    #
    def setup(&block)
      define_method(:setup) do
        super()

        instance_exec(&block)
      end
    end

    # Public: Helper to define a +teardown+ method.
    #
    # Examples
    #
    #   require "minitest/autorun"
    #   require "minitest/sugar"
    #
    #   class TruthTest < Minitest::Test
    #     setup do
    #       @truth = true
    #     end
    #
    #     teardown do
    #       @truth = nil
    #     end
    #
    #     test "assert the truth" do
    #       assert @truth
    #     end
    #   end
    #
    def teardown(&block)
      define_method(:teardown) do
        instance_exec(&block)

        super()
      end
    end
  end

  Test.extend(Sugar)
end
