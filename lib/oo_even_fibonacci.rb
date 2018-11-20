# Implement your object-oriented solution here!
# class Multiples
#
#   def initialize(limit)
#     @limit = limit
#   end
#
#   def collect_multiples
#     (1...@limit).select{|n| n % 3 == 0 || n % 5 == 0}
#   end
#
#   def sum_multiples
#     collect_multiples.inject(0){|sum, x| sum + x}
#   end
#
# end

class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def fibonacci_sequence
    array = [1, 2]
    i = 1
    while array[i] < @limit
      n = array[i - 1] + array[i]
      array.push(n)
      i = i + 1
    end
    array.pop
    array
  end


  def sum
    nums = fibonacci_sequence
    even_nums = nums.select{|num| num % 2 == 0}
    even_nums.inject(0){|sum, x| sum + x}
  end

end
