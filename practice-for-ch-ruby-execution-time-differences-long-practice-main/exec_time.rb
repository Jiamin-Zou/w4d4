def my_min2(list)
    list.inject do |acc, ele| 
        if ele < acc
            ele 
        else
            acc
        end
    end
end

def my_min(list)
    min = list[0]
    list.each_with_index do |el1, i1|
        list.each_with_index do |el2, i2|
            next if i1 == i2 
            if el2 < el1 ? try = el2 : try = el1
                min = try if try < min
            end
        end
    end
    return min 
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)
# p my_min2(list)

def largest_cont_sum(list)
    arr = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            arr << list[i..j]
        end
    end
    arr.map! {|subarr| subarr.sum}
    arr.max
end

list = [5, 3, -7]
p largest_cont_sum(list)
