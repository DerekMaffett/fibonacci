class Fibonacci
  def self.find_digit(digit)
    digit = digit.to_i
    build_fibonacci_sequence(digit)[digit - 1]
  end

  def initialize(length)
    @sequence = Fibonacci.build_fibonacci_sequence(length)
  end

  def to_a
    @sequence
  end

  def self.build_fibonacci_sequence(length)
    sequence = [1, 1]
    (length - 2).times do |i|
      previous_two_digits = sequence[i] + sequence[i + 1]
      sequence[i + 2] = previous_two_digits
    end
    sequence
  end
end
