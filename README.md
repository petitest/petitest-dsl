# Petitest::DSL

[![Gem Version](https://badge.fury.io/rb/petitest-dsl.svg)](https://rubygems.org/gems/petitest-dsl)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/petitest/petitest-dsl)

DSL for [Petitest](https://github.com/petitest/petitest).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "petitest-dsl"
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install petitest-dsl
```

## Usage

Require `"petitest/dsl"` and extend `Petitest::DSL` into your test classes.

```ruby
require "petitest/autorun"
require "petitest/dsl"

class ExampleTest < Petitest::Test
  extend ::Petitest::DSL

  # ... your tests ...
end
```

### .desc

Set a description to the following test.

```ruby
desc "description for this test"
def test_foo
  assert { foo }
end
```

### .test

Define a test with a given description.

```ruby
test "description for this test" do
  assert { foo }
end
```

Define a skkipped test.

```ruby
test "description for this test"
```

### .sub_test

Nest a test group.

```ruby
sub_test "bar" do
  test "baz" do
    assert { baz }
  end

  sub_test "boo" do
    test "boz" do
      assert { boz }
    end
  end
end
```
