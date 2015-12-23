require "bundler/setup"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/minitest/sugar"

class MinitestSugarTest < Minitest::Test
  test "defines a friendly human description" do
    assert true
  end

  test "raises if the name is already taken" do
    self.class.test("name") { }

    assert_raises(RuntimeError) do
      self.class.test("name") { }
    end
  end
end
