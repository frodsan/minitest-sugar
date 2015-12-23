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
      test_name = sprintf("test_%s", name.gsub(/\s+/, "_"))

      if (instance_method(test_name) rescue false)
        raise "#{test_name} is already defined in #{ self }"
      end

      define_method(test_name, &block)
    end
  end

  Test.extend(Sugar)
end
