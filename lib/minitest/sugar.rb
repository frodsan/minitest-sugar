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
      test_name = "test_#{name.gsub(/\s+/,"_")}"
      defined   = instance_method(test_name) rescue false
      raise "#{test_name} is already defined in #{self}" if defined

      if block_given?
        define_method(test_name, &block)
      else
        define_method(test_name) do
          flunk("No implementation provided for #{name}")
        end
      end
    end
  end

  Test.extend(Sugar)
end
