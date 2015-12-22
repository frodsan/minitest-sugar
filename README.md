minitest-sugar
==============

Creates tests in a more human readable way.

Installation
------------

    $ gem install minitest-sugar

Usage
-----

```ruby
require "minitest/sugar"

class TruthTest < Minitest::Test
  extend Minitest::Sugar

  # instead of `def test_assert_the_truth` do:
  test "assert the truth" do
    assert true
  end
end
```
