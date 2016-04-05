class Squares

  VERSION = 2

  attr_accessor :sum
  attr_reader :number

  def initialize(number)
    @number = number
    @sum = 0
  end

  def square_of_sum
    (1..number).reduce(:+) ** 2
  end

  def sum_of_squares
    1.upto(number) { |n| self.sum += n ** 2 }
    sum
  end

  def difference
    self.sum = 0
    return 0 if number == 0
    square_of_sum - sum_of_squares
  end

end

 