# Implement your object-oriented solution here!
require 'pry'

class EvenFibonacci
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_terms
    range = [1, 2]

    while range[range.size - 1] + range[range.size - 2] <= @limit
      range << range[range.size - 1] + range[range.size - 2]
    end

    range.select do |n|
      n % 2 == 0
    end
  end

  def sum
    collect_terms.inject(:+)
  end
end
