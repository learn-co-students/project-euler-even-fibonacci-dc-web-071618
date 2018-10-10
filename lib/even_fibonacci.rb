# Implement your procedural solution here!
require 'pry'

def even_fibonacci_sum n 
    nums = [1, 2]
    while nums[-1] < n 
        nums << (nums[-1] + nums[-2])
    end
    nums.pop
    nums.select do |num| num % 2 == 0 end.reduce(:+)
end


puts even_fibonacci_sum 100
