def fibonacci_sequence(limit)
  array = [1, 2]
  i = 1
  while array[i] < limit
    n = array[i - 1] + array[i]
    array.push(n)
    i = i + 1
  end
  array.pop
  array
end


def even_fibonacci_sum(limit)
  nums = fibonacci_sequence(limit)
  even_nums = nums.select{|num| num % 2 == 0}
  even_nums.inject(0){|sum, x| sum + x}
end
