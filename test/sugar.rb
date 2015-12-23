require "bundler/setup"
require "minitest/autorun"
require_relative "../lib/minitest/sugar"

class MinitestSugarTest < Minitest::Test
  extend Minitest::Sugar

  test "defines a friendly human description" do
    assert true
  end

  test "raises if the name is already taken" do
    self.class.test("name") {}

    assert_raises(RuntimeError) { self.class.test("name") {} }
  end
end
