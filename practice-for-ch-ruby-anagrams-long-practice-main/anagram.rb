def anagram?(str1, str2) #O(n!)
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

def 
p sec_anagram?("gizmo", "sally")
p sec_anagram?("elvis", "lives")