minitest-sugar
==============

Useful helpers for Minitest 5+.

Usage
-----

```ruby
require "minitest/autorun"
require "minitest/sugar"

class TruthTest < Minitest::Test
  # Adds support for `setup` and `teardown` callbacks:
  setup do
    @truth = true
  end

  teardown do
    @truth = nil
  end

  # Define a test method using a String. Instead of
  # `def test_assert_the_truth`, do:
  test "assert the truth" do
    assert @truth
  end
end
```

Installation
------------

```
$ gem install minitest-sugar
```
