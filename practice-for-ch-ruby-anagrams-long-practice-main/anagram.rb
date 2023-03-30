def anagram?(str1, str2) #O(n!)
    return false if str1.length != str2.length
    arr = str1.chars.permutation.to_a #factorial
    arr.include?(str2.chars) #linear
end

def sec_anagram?(str1, str2) #O(n^2)
    return false if str1.length != str2.length #constant
    str_arr = str2.chars #linear
    str1.each_char do |char| #linear n^2
        idx = str_arr.index(char) #linear
        return false if idx.nil? #constant
        str_arr.delete_at(idx) #linear
    end
    str_arr.empty? #linear
end

def third_anagram?(str1, str2)
    return false if str1.length != str2.length
    str1.chars.sort == str2.chars.sort
    # chars is linear O(n)
    # Array.sort is loglinear O(n log n)
    # array == array is linear O(n)
    #O (n+ n log n + n)
    # O(n log n)
end

def fourth_anagram?(str1, str2) #O(n)
    return false if str1.length != str2.length
    counter = Hash.new(0) # constant
    str1.each_char {|char| counter[char] += 1} # linear (constant) = linear
    str2.each_char {|char| counter[char] -= 1} # linear (constant) = linear
    counter.values.all?{|val| val.zero?} # linear + linear (constant)
    # O(4n)
    # O(n)

end
p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives")