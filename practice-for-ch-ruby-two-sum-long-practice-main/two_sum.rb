def two_sum?(arr, target_sum)
    (0...arr.length).each do |i| # linear
        (i+1...arr.length).each do |j| # linear
            return true if (arr[i] + arr[j]) == target_sum # constant, comparing single elements
        end
    end
    false # constant
    # O(n * n * (constant) )
end

arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false