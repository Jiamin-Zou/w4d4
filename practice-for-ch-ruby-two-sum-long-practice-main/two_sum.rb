def bad_two_sum?(arr, target_sum)
    (0...arr.length).each do |i| # linear
        (0...arr.length).each do |j|
            next if i == j # linear
            return true if (arr[i] + arr[j]) == target_sum # constant, comparing single elements
        end
    end
    false # constant
    # O(n * n * (constant) )
    # O(n^2)
end

def okay_two_sum?(arr, target_sum)
    sorted_arr = arr.sort   # n log n
    left = 0                # constant
    right = arr.length - 1  # constant

    while left < right      # linear
        sum = sorted_arr[left] + sorted_arr[right] #constant
        return true if sum == target_sum    # constant

        if sum < target_sum #constant
            left += 1       #constant
        else
            right -= 1      #constant
        end
    end
    false                   #constant

    # final is O(n log n)
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false