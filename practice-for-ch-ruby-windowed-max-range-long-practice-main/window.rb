def windowed_max_range(arr, n)
    current_max_range = nil #constant
    (0..arr.length - n).each do |i| #linear
        window = arr[i...i + n] #linear
        range = window.max - window.min #constant(linear + linear)
        current_max_range ||= range   #constant
        if range > current_max_range
            current_max_range = range 
        end
    end
    current_max_range
end # O(n^2)

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #== 6 # 3, 2, 5, 4, 8