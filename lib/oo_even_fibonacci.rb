# Implement your object-oriented solution here!
class EvenFibonacci 
    def initialize limit
        @nums = [1, 2]
        @limit = limit
    end

    def sum 
        while @nums[-1] < @limit 
            @nums << (@nums[-1] + @nums[-2])
        end
        @nums.pop
        @nums.select do |num| num % 2 == 0 end.reduce(:+)
    end
end

