# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :fib_array, :even_array, :sum

  def initialize(limit)
    @first = 0
    @second = 1
    @fib_array = []
    @even_array = even_fib_array(limit)
    @sum = even_fib_sum
  end

  def even_fib_array(limit)
    i = 0
    while i <= limit
      i = @first + @second
      break if i > limit
      fib_array << i if (i % 2 == 0)
      @first = @second
      @second = i
    end
    fib_array
  end

  def even_fib_sum
    @even_array.reduce(:+)
  end
end
