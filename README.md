minitest-sugar
==============

Useful helpers for Minitest 5+.

Usage
-----

```ruby
require "minitest/autorun"
require "minitest/sugar"

class TruthTest < Minitest::Test
  setup do
    @truth = true
  end

  # Define a test method using a String. Instead of
  # `def test_assert_the_truth`, do:
  test "assert the truth" do
    assert @truth
  end

  teardown do
    @truth = nil
  end
end
```

Installation
------------

```
$ gem install minitest-sugar
```
