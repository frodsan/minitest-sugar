minitest-sugar
==============

Define a Minitest 5+ test using a String.

Usage
-----

```ruby
require "minitest/autorun"
require "minitest/sugar"

class TruthTest < Minitest::Test
  # instead of `def test_assert_the_truth` do:
  test "assert the truth" do
    assert true
  end
end
```

Installation
------------

```
$ gem install minitest-sugar
```
