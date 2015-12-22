module Minitest
  module Sugar
    # Allow to create tests in a more human readable form.
    #
    #  class TruthTest < Minitest::Test
    #    extend Minitest::Sugar
    #
    #    test "assert the truth" do
    #      assert true
    #    end
    #  end
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
end
