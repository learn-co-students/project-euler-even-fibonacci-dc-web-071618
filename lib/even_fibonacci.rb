# Implement your procedural solution here!

def collect_terms(limit)
  range = [1, 2]

  while range[range.size - 1] + range[range.size - 2] <= limit
    range << range[range.size - 1] + range[range.size - 2]
  end

  range.select do |n|
    n % 2 == 0
  end
end

def even_fibonacci_sum(limit)
  collect_terms(limit).inject(:+)
end
