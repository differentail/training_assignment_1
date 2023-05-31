# frozen_string_literal: true

# solver class for problem 1
class Solve1
  def initialize(number)
    @number = number
    @digits = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    while number > 0
      @digits[number % 10] += 1
      number /= 10
    end
  end

  def solve
    ans = String.new
    9.downto(0) do |digit|
      ans = ans << (digit.to_s * @digits[digit])
    end

    ans.to_i
  end
end

if __FILE__ == $PROGRAM_NAME
  s = Solve1.new(101)

  puts s.solve
end
