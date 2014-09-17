require 'spec_helper'

require 'fibonacci'

# NOTE: Fibonacci specs are based on the expectation of 1, 1, 2, 3, 5...
#       Tests are invalid if a different way of handling the first
#       numbers.

describe Fibonacci do
  it 'should return the appropriate digits of the Fibonacci sequence' do
    assert_equal(1, Fibonacci.find_digit(1))
    assert_equal(1, Fibonacci.find_digit(2))
    assert_equal(5, Fibonacci.find_digit(5))
    assert_equal(55, Fibonacci.find_digit(10))
  end

  it 'shold generate a Fibonacci sequence of given length' do
    assert_equal([1, 1, 2, 3, 5, 8, 13, 21, 34, 55], Fibonacci.new(10).to_a)
  end

  it 'should flexibly accept inputs such as "6"' do
    assert_equal(8, Fibonacci.find_digit('6'))
  end
end
